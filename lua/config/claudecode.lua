local M = {}

-- Setup claudecode.nvim plugin
local function setup()
  local claudecode = require("claudecode")
  claudecode.setup({
    -- Configuration options for claudecode.nvim
    -- You can customize these based on your preferences
    -- API configuration
    -- api_key_env = "ANTHROPIC_API_KEY", -- Environment variable for API key
    -- UI configuration
    popup = {
      width = 80,
      height = 20,
      border = "rounded",
    },
    -- Chat configuration
    chat = {
      max_tokens = 4096,
      temperature = 0.7,
      system_prompt = "You are a helpful AI assistant integrated into Neovim. Help the user with their code and questions.",
    },
    -- Model configuration
    model = "claude-3-5-sonnet-20241022", -- Default model
    -- Integration settings
    integrations = {
      telescope = true, -- Enable telescope integration if available
      which_key = true, -- Enable which-key integration if available
    },
  })
end

-- Initialize the plugin
setup()

return M
