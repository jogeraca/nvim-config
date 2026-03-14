require("neogit").setup({
  -- Disable mercurial support to avoid hg_cmd warning
  integrations = {
    diffview = true,
    telescope = false,
    fzf_lua = true,
  },
  -- Only use git, not other VCS
  use_magit_keybindings = false,
})