local M = {
  -- Autoformat
  'stevearc/conform.nvim',
}

function M.config()
  require('conform').setup({
    notify_on_error = true,

    formatters = {
      sqlfluff = {
        args = { 'format', '-' },
      },
    },

    formatters_by_ft = {
      lua = { 'stylua' },
      sql = { 'sqlfluff', timeout_ms = 15000 },
      -- Conform can also run multiple formatters sequentially
      go = { 'goimports', 'gofumpt', timeout_ms = 2000 },
      python = { 'isort', 'black' },
      css = { 'prettierd', 'prettier' },
      scss = { 'prettierd', 'prettier' },
      less = { 'prettierd', 'prettier' },
      html = { 'prettierd', 'prettier' },
      json = { 'prettierd', 'prettier' },
      jsonc = { 'prettierd', 'prettier' },
      yaml = { 'prettierd', 'prettier' },
      toml = { 'prettierd', 'prettier' },
      -- markdown = { 'prettierd', 'prettier' },
      -- ['markdown.mdx'] = { 'prettierd', 'prettier' },
      graphql = { 'prettierd', 'prettier' },
      handlebars = { 'prettierd', 'prettier' },

      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      -- javascript = { { "prettierd", "prettier" } },
    },
  })
end

return M
