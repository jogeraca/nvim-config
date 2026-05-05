require("codecompanion").setup({
  adapters = {
    openai = function()
      return require("codecompanion.adapters").extend("openai", {
        schema = {
          model = {
            default = "gpt-4o",
          },
        },
      })
    end,
    -- Requires ANTHROPIC_API_KEY env var to use
    anthropic = function()
      return require("codecompanion.adapters").extend("anthropic", {
        schema = {
          model = {
            default = "claude-opus-4-20250514",
          },
        },
      })
    end,
  },
  strategies = {
    chat = {
      adapter = "openai",
    },
    inline = {
      adapter = "openai",
    },
  },
})
