local custom_attach = function(client, bufnr)
  local map_opts = { buffer = bufnr, silent = true }

  -- vim.keymap.set("n", "<leader>df", "<cmd>lua vim.lsp.buf.format()<cr>", map_opts)
  -- vim.keymap.set("n", "<leader>gd", "<cmd>lua vim.diagnostic.open_float()<cr>", map_opts)
  -- vim.keymap.set("n", "ed", "<cmd>lua vim.lsp.buf.definition()<cr>", map_opts)
  -- vim.keymap.set("n", "vgt", ":vsplit | lua vim.lsp.buf.definition()<cr>", map_opts)
  -- vim.keymap.set("n", "hgt", ":belowright split| lua vim.lsp.buf.definition()<cr>", map_opts)
  -- vim.keymap.set("n", "<leader>eK", "<cmd>lua vim.lsp.buf.hover()<cr>", map_opts)
  -- vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.implementation()<cr>", map_opts)
  -- vim.keymap.set("n", "<leader>es", "<cmd>lua vim.lsp.buf.signature_help()<cr>", map_opts)
  -- vim.keymap.set("n", "1gD", "<cmd>lua vim.lsp.buf.type_definition()<cr>", map_opts)
  -- vim.keymap.set("n", "egr", ":References<cr>", map_opts)
  -- vim.keymap.set("n", "g0", ":DocumentSymbols<cr>", map_opts)
  -- vim.keymap.set("n", "gW", ":WorkspaceSymbols<cr>", map_opts)
  -- vim.keymap.set("n", "<leader>dd", ":Diagnostics<cr>", map_opts)
  -- vim.keymap.set("n", "<leader>da", ":DiagnosticsAll<cr>", map_opts)

  vim.keymap.set("n", "<space>r", vim.lsp.codelens.run, { buffer = true, noremap = true })
  vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
  vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
  vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })

  -- vim.keymap.set("n", "space-s", "<cmd>lua vim.lsp.codelens.run()<cr>", map_opts)

  -- vim.cmd([[imap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])
  -- vim.cmd([[smap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])

  -- if client.server_capabilities.renameProvider then
  --   vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, map_opts)
  -- end
end

-- vim.cmd("autocmd FileType elixir highlight ElixirFunction gui=italic,bold")
vim.api.nvim_set_hl(0, "ElixirFunction", {italic = true, bold = true})

local elixirls = require("elixir.elixirls")

require("elixir").setup({
  nextls = {
    enable = false,
    },
  },
  elixirls = {
  },
  projectionist = {enable = true},
})
