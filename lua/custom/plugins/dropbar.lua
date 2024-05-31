-- Topbar breadcrumbs plugin
local M = {
  'Bekaboo/dropbar.nvim',
  -- optional, but required for fuzzy finder support
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
  },
}

function M.config()
  require('dropbar').setup()

  vim.keymap.set('n', '<leader>ld', function()
    require('dropbar.api').pick()
  end, { noremap = true, silent = true, desc = 'Open dropbar' })
end

return M
