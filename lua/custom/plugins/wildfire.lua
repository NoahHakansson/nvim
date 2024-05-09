local M = {
  'sustech-data/wildfire.nvim',
  event = 'VeryLazy',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
}

function M.config()
  require('wildfire').setup()
end

return M
