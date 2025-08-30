require("nvim-treesitter.configs").setup {
  ensure_installed = { "python", "cpp", "lua", "vim", "json", "toml", "elixir", "query", "vimdoc", "heex", "javascript", "html" },
  ignore_install = {}, -- List of parsers to ignore installing
  sync_install = false,
  indent = { enable = true },
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighthing = false,
  },
}
