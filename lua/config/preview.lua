require('preview').setup({
  previewers_by_ft = {},
  previewers = {},
  render_on_write = false,
})

-- PlantUML preview: file mode (supports !include), generates in source directory
local plantuml_viewers = {}

local function plantuml_preview()
  if vim.bo.filetype ~= 'plantuml' then return end

  local current_file = vim.fn.expand('%:p')
  local output_dir = vim.fn.expand('%:p:h')

  -- Read @startuml name to predict the output filename
  local diagram_name = nil
  local lines = vim.api.nvim_buf_get_lines(0, 0, 10, false)
  for _, line in ipairs(lines) do
    local name = line:match('^@startuml%s+(%S+)')
    if name then
      diagram_name = name
      break
    end
  end

  local output_file
  if diagram_name then
    output_file = output_dir .. '/' .. diagram_name .. '.png'
  else
    output_file = vim.fn.expand('%:p:r') .. '.png'
  end

  vim.fn.jobstart({ 'plantuml', '-tpng', current_file }, {
    on_exit = function(_, code)
      vim.schedule(function()
        if code ~= 0 and code ~= 200 then
          print('[plantuml] Error generating preview')
          return
        end

        if vim.fn.filereadable(output_file) == 0 then
          print('[plantuml] PNG not found: ' .. output_file)
          return
        end

        if not plantuml_viewers[output_file] then
          plantuml_viewers[output_file] = vim.fn.jobstart({ 'nsxiv', output_file }, {
            on_exit = function()
              plantuml_viewers[output_file] = nil
            end,
          })
        end
      end)
    end,
  })
end

vim.api.nvim_create_user_command('PreviewFile', plantuml_preview, {})

local plantuml_group = vim.api.nvim_create_augroup('PlantUMLPreview', {})
vim.api.nvim_create_autocmd('BufWritePost', {
  group = plantuml_group,
  pattern = '*.puml,*.plantuml,*.uml,*.pu',
  callback = plantuml_preview,
})
vim.api.nvim_create_autocmd('FileType', {
  group = plantuml_group,
  pattern = 'plantuml',
  callback = plantuml_preview,
})

-- Create PreviewText command using soil plugin
vim.api.nvim_create_user_command('PreviewText', function()
  -- Use plantuml command directly to generate text output
  local current_file = vim.fn.expand('%:p')
  if vim.bo.filetype == 'plantuml' then
    local output_file = vim.fn.tempname() .. '.txt'
    local cmd = string.format('plantuml -pipe -ttxt < "%s" > "%s"', current_file, output_file)

    vim.fn.system(cmd)

    -- Open the output in a split
    vim.cmd('vsplit ' .. output_file)
  else
    print("PreviewText: Current buffer is not a PlantUML file")
  end
end, {})
