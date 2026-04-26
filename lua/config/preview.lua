require('preview').setup({
  previewers_by_ft = {
   plantuml = {
      name = 'plantuml_svg',
      renderer = {
        type = 'command',
        opts = {
          cmd = { 'pqiv', '--background-pattern=white','--watch-files=on' },
          ext = 'svg',
        },
      },
    },
  },
  previewers = {
    plantuml_svg = {
      args = { '-pipe', '-tsvg' },
    },
  },
  render_on_write = true,
})

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePre' }, {
  group = vim.api.nvim_create_augroup('PlantumlIncludePath', {}),
  pattern = { '*.puml', '*.plantuml', '*.iuml' },
  callback = function(args)
    vim.env.PLANTUML_INCLUDE_PATH = vim.fn.fnamemodify(args.file, ':p:h')
  end,
})
