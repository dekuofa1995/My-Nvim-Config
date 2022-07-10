local present, code_runner = pcall(require, "code_runner")
-- local code_runner = require("code_runner")
if not present then return end

code_runner.setup({
  filetype = {
    python = "python3 -u",
    -- racket = "racket",
    scheme = "racket",
  }
})

