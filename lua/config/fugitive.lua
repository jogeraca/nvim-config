local keymap = vim.keymap

keymap.set("n", "<leader>gs", "<cmd>Git<cr>", { desc = "Git: show status" })
keymap.set("n", "<leader>gw", "<cmd>Gwrite<cr>", { desc = "Git: add file" })
keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>", { desc = "Git: commit changes" })
keymap.set("n", "<leader>gpl", "<cmd>Git pull<cr>", { desc = "Git: pull changes" })
keymap.set("n", "<leader>gpu", "<cmd>15 split|term git push<cr>", { desc = "Git: push changes" })
keymap.set("v", "<leader>gb", ":Git blame<cr>", { desc = "Git: blame selected line" })

keymap.set("n", "<c-p>", ":GitFiles<cr>", { desc = "Open git files" })
keymap.set("n", "<leader>Gr", ":Gr<cr>", { desc = "Git: git checkout file" })

-- keymap.set("n", "<leader>gsh", "<cmd>Git push<cr>", { desc = "Git: show status" })
-- keymap.set("n", "<leader>gll", "<cmd>Gpull<cr>", { desc = "Git: show status" })
-- keymap.set("n", "<leader>Gw", "<cmd>Gwq<cr>", { desc = "Git: show status" })
-- keymap.set("n", "<leader>Gb", "<cmd>Gwq<cr>", { desc = "Git: show status" })
-- keymap.set("n", "<leader>Gvh", "<cmd>Gvdiffsplit<cr>", { desc = "Git: show status" })
-- keymap.set("n", "<leader>Ghh", "<cmd>Gdiffsplit<cr>", { desc = "Git: show status" })
-- keymap.set("n", "<leader>Ggd", ":silent !tmux popup -K -w '90\\%' -h '90\\%' -R 'git diff'<cr>", { desc = "Git: show status" })

--convert git to Git in command line mode
vim.fn["utils#Cabbrev"]("git", "Git")

keymap.set("n", "<leader>gbn", function()
  vim.ui.input({ prompt = "Enter a new branch name" }, function(user_input)
    if user_input == nil or user_input == "" then
      return
    end

    local cmd_str = string.format("G checkout -b %s", user_input)
    vim.cmd(cmd_str)
  end)
end, {
  desc = "Git: create new branch",
})

keymap.set("n", "<leader>gf", ":Git fetch ", { desc = "Git: prune branches" })
keymap.set("n", "<leader>gbd", ":Git branch -D ", { desc = "Git: delete branch" })
