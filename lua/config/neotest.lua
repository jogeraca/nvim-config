require("neotest").setup({
  log_level = vim.log.levels.INFO,
  adapters = {
    require("neotest-elixir"),
    -- require("neotest-python"),
  },
  icons = {
    running_animated = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
  },
  -- consumers = { 
  --   overseer = require("neotest.consumers.overseer"),
  -- },
  quickfix = {
    enabled = false,
  },
})

-- vim.api.nvim_create_user_command("Neotest", lua require("neotest").run_suite, {})
-- vim.api.nvim_create_user_command("NeotestFile", require("neotest").run_file, {})
-- vim.api.nvim_create_user_command("NeotestNearest", require("neotest").run, {})
-- vim.api.nvim_create_user_command("NeotestWatch", function()
--   require("neotest").run_suite({ watch = true })
-- end, {})
-- vim.api.nvim_create_user_command("NeotestWatchStop", neotest.watch.stop, {})
-- vim.api.nvim_create_user_command("NeotestLast", neotest.run.run_last, {})
-- vim.api.nvim_create_user_command("NeotestAttach", neotest.run.attach, {})
-- vim.api.nvim_create_user_command("NeotestSummary", neotest.summary.toggle, {})
-- vim.api.nvim_create_user_command("NeotestOutput", neotest.output.open, {})

-- vim.keymap.set("n", "<leader>t", require("neotest").run)
-- vim.keymap.set("n", "<leader>T", require("neotest").run_file)
-- vim.keymap.set("n", "<space>to", neotest.output.open)
-- vim.keymap.set("n", "<space>tl", neotest.run.run_last)

-- vim.cmd.cnoreabbrev("ntw NeotestWatch")
-- vim.cmd.cnoreabbrev("ntl NeotestLast")
-- vim.cmd.cnoreabbrev("nts NeotestSummary")
-- vim.cmd.cnoreabbrev("nto NeotestOutput")

-- local group = vim.api.nvim_create_augroup("NeotestConfig", {})
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "neotest-output,neotest-attach",
--   group = group,
--   callback = function(opts)
--     vim.keymap.set("n", "q", function()
--       pcall(vim.api.nvim_win_close, 0, true)
--     end, {
--       buffer = opts.buf,
--     })
--   end,
-- })

-- vim.cmd([[
-- command! NeotestSummary lua require("neotest").summary.toggle()
-- command! NeotestFile lua require("neotest").run.run(vim.fn.expand("%"))
-- command! Neotest lua require("neotest").run.run(vim.fn.getcwd())
-- command! NeotestNearest lua require("neotest").run.run()
-- command! NeotestDebug lua require("neotest").run.run({ strategy = "dap" })
-- command! NeotestAttach lua require("neotest").run.attach()
-- command! NeotestOutput lua require("neotest").output.open()
-- ]])
