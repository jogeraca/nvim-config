require("avante").setup {
    provider = "openai",
    providers = {
     openai = {
      endpoint = "https://api.openai.com/v1",
      model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
      timeout = 30000, -- timeout in milliseconds
      max_tokens = 4096,
      extra_request_body = {
          temperature = 0,
          max_completion_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
          reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
        },
      -- reasoning_effort = "high" -- only supported for reasoning models (o1, etc.)
    }
  },
}
