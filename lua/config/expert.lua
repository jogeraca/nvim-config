-- Highlight ElixirFunction with italic and bold
vim.api.nvim_set_hl(0, "ElixirFunction", {italic = true, bold = true})

vim.lsp.config('expert', {
  cmd = { 'expert', '--stdio' },
  root_markers = { 'mix.exs', '.git' },
  filetypes = { 'elixir', 'eelixir', 'heex' },
  settings = {
    expert = {
      -- Enable experimental features for better performance
      enableExperimentalFeatures = true,
      -- Disable automatic dependency fetching to avoid blocking
      fetchDeps = true,
      -- Enable code lens
      enableCodeLens = true,
    }
  }
})

vim.lsp.enable 'expert'
