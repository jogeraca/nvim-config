require('preview').setup({
  previewers_by_ft = {
   plantuml = {
      name = 'plantuml_svg',
      renderer = {
        type = 'command',
        opts = {
          cmd = { 'feh', '--auto-reload' },
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
