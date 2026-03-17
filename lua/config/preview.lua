require('preview').setup({
  previewers_by_ft = {
    -- PlantUML preview using browser (works with installed plantuml)
    plantuml = {
      name = 'plantuml_svg',
      renderer = { type = 'command', opts = { cmd = { 'nsxiv' } } },
    },
  },
  previewers = {
    -- PlantUML SVG generation
    plantuml_svg = {
      args = { '-pipe', '-tpng' },
      output_extension = 'png',
    },
    -- PlantUML text generation
    plantuml_text = {
      args = { '-pipe', '-ttxt' },
      output_extension = 'txt',
      renderer = { type = 'buffer', opts = { split_cmd = 'split' } },
    },
  },
  render_on_write = true,
  auto_open = true,
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
