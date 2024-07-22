local M = {
  'jeniasaigak/goplay.nvim',
}

local icons = require('utils.icons')

function M.config()
  require('goplay').setup()
  require('which-key').add({
    { '<leader>p', group = 'Go [P]lay' },
    icon = icons.misc.gopher,
  })
  vim.api.nvim_set_keymap('n', '<leader>pt', ':GPToggle<CR>', { noremap = true, silent = true, desc = 'Toggle GoPlay' })
  vim.api.nvim_set_keymap('n', '<leader>pe', ':GPExec<CR>', { noremap = true, silent = true, desc = 'Execute GoPlay' })
  vim.api.nvim_set_keymap('n', '<leader>pf', ':GPExecFile<CR>', { noremap = true, silent = true, desc = 'Execute GoPlay file' })
end

return M
