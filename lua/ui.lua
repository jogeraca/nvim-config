--- This module will load a random colorscheme on nvim startup process.
local utils = require("utils")

local M = {}

local use_theme = function(name)
  local ok, err = pcall(vim.cmd.colorscheme, name)

  if not ok then
    vim.notify(
      string.format("Failed to load colorscheme %s, err: %s", name, err),
      vim.log.levels.WARN
    )

    vim.cmd.colorscheme("default")
  end
end

-- Colorscheme to its directory name mapping, because colorscheme repo name is not necessarily
-- the same as the colorscheme name itself.
M.colorscheme_conf = {
  onedark = {
    tone = "dark",
    load = function()
      require("onedark").setup {
        style = "darker",
      }
      require("onedark").load()
    end,
  },
  edge = {
    tone = "dark",
    load = function()
      vim.g.edge_style = "default"
      vim.g.edge_enable_italic = 1
      vim.g.edge_better_performance = 1
      use_theme("edge")
    end,
  },
  sonokai = {
    tone = "dark",
    load = function()
      vim.g.sonokai_enable_italic = 1
      vim.g.sonokai_better_performance = 1
      use_theme("sonokai")
    end,
  },
  gruvbox_material = {
    tone = "dark",
    load = function()
      vim.g.gruvbox_material_foreground = "original"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_better_performance = 1
      use_theme("gruvbox-material")
    end,
  },
  everforest = {
    tone = "light",
    load = function()
      vim.o.background = "light"
      vim.g.everforest_background = "hard"
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_better_performance = 1
      use_theme("everforest")
    end,
  },
  nightfox = {
    tone = "dark",
    load = function()
      use_theme("carbonfox")
    end,
  },
  onedarkpro = {
    tone = "dark",
    load = function()
      use_theme("onedark_dark")
    end,
  },
  material = {
    tone = "dark",
    load = function()
      vim.g.material_style = "darker"
      use_theme("material")
    end,
  },
  arctic = {
    tone = "dark",
    load = function()
      use_theme("arctic")
    end,
  },
  kanagawa = {
    tone = "dark",
    load = function()
      use_theme("kanagawa-dragon")
    end,
  },
  modus = {
    tone = "light",
    load = function()
      vim.o.background = "light"
      use_theme("modus_operandi")
    end,
  },
  jellybeans = {
    tone = "dark",
    load = function()
      use_theme("jellybeans")
    end,
  },
  github = {
    tone = "light",
    load = function()
      use_theme("github_light_default")
    end,
  },
  ashen = {
    tone = "dark",
    load = function()
      use_theme("ashen")
    end,
  },
  melange = {
    tone = "light",
    load = function()
      vim.o.background = "light"
      use_theme("melange")
    end,
  },
  edge_light = {
    tone = "light",
    load = function()
      vim.g.edge_style = "default"
      vim.g.edge_enable_italic = 1
      vim.g.edge_better_performance = 1
      vim.o.background = "light"
      use_theme("edge")
    end,
  },
  makurai = {
    tone = "dark",
    load = function()
      use_theme("makurai_dark")
    end,
  },
  vague = {
    tone = "dark",
    load = function()
      use_theme("vague")
    end,
  },
  kanso = {
    tone = "dark",
    load = function()
      use_theme("kanso")
    end,
  },
  citruszest = {
    tone = "dark",
    load = function()
      use_theme("citruszest")
    end,
  },
  oxocarbon = {
    tone = "dark",
    load = function()
      use_theme("oxocarbon")
    end,
  },
}

--- Use a random colorscheme from the pre-defined list of colorschemes.
--- @param tone? "light"|"dark" Optional filter by tone. If nil, picks from all.
M.rand_colorscheme = function(tone)
  local candidates = {}
  for name, conf in pairs(M.colorscheme_conf) do
    if tone == nil or conf.tone == tone then
      table.insert(candidates, name)
    end
  end

  local colorscheme = utils.rand_element(candidates)
  vim.o.background = "dark" -- reset default before loading

  M.colorscheme_conf[colorscheme].load()

  vim.notify("Colorscheme: " .. colorscheme .. " (" .. M.colorscheme_conf[colorscheme].tone .. ")")
  return colorscheme
end

M.rand_colorscheme()

-- enable the experiment UI
require("vim._core.ui2").enable {
  enable = true,
  msg = { -- Options related to the message module.
    ---@type 'cmd'|'msg' Default message target, either in the
    ---cmdline or in a separate ephemeral message window.
    ---@type string|table<string, 'cmd'|'msg'|'pager'> Default message target
    ---or table mapping |ui-messages| kinds and triggers to a target.
    targets = "cmd",
    cmd = { -- Options related to messages in the cmdline window.
      height = 0.5, -- Maximum height while expanded for messages beyond 'cmdheight'.
    },
    dialog = { -- Options related to dialog window.
      height = 0.5, -- Maximum height.
    },
    msg = { -- Options related to msg window.
      height = 0.5, -- Maximum height.
      timeout = 4000, -- Time a message is visible in the message window.
    },
    pager = { -- Options related to message window.
      height = 0.5, -- Maximum height.
    },
  },
}

vim.keymap.set("n", "<leader>tD", function() M.rand_colorscheme("dark") end, { desc = "Random dark colorscheme" })
vim.keymap.set("n", "<leader>tl", function() M.rand_colorscheme("light") end, { desc = "Random light colorscheme" })

return M
