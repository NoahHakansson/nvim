local M = {
  'jeniasaigak/goplay.nvim',
}

function M.config()
  require('goplay').setup()
  require('which-key').register({
    ['<leader>p'] = { name = 'Go [P]play', _ = 'which_key_ignore' },
  })
  vim.api.nvim_set_keymap('n', '<leader>pt', ':GPToggle<CR>', { noremap = true, silent = true, desc = 'Toggle GoPlay' })
  vim.api.nvim_set_keymap('n', '<leader>pe', ':GPExec<CR>', { noremap = true, silent = true, desc = 'Execute GoPlay' })
  vim.api.nvim_set_keymap('n', '<leader>pf', ':GPExecFile<CR>', { noremap = true, silent = true, desc = 'Execute GoPlay file' })
end

return M
