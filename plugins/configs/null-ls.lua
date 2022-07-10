-- local present, null_ls = pcall(require, "null-ls")
local null_ls = require("null-ls")
-- if not present then
--   print("not found null-ls, please check it's installed")
--   return
-- end

local b = null_ls.builtins

local sources = {
  -- builtin config doc see: https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTIN_CONFIG.md
  -- js, jsreact, ts, tsreact, vue, css, scss, less, html, json, jsonc, yaml, markdown, graphql, handlebars
  b.formatting.prettier,
  -- racket
  b.formatting.raco_fmt.with({
    filetypes = { "racket", "scheme" },
  }),

  -- lua
  b.formatting.stylua,
  -- shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

}
-- format on save file: sync formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup ({
  -- debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                  -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                  vim.lsp.buf.formatting_sync()
              end,
          })
      end
  end,

})
