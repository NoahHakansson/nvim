--
-- Autocommands
--

local myGeneralAutoCmds = vim.api.nvim_create_augroup('My General autocmds', { clear = true })

-- disable auto comment on new line
vim.api.nvim_create_autocmd('BufEnter', {
  callback = function()
    vim.opt.formatoptions:remove({ --[[ "c", "r",  ]]
      'o',
    })
  end,
  desc = 'Disable New Line Comment',
  group = myGeneralAutoCmds,
})

-- bind q to close quickfix
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
  pattern = 'quickfix',
  callback = function()
    vim.keymap.set('n', 'q', '<cmd>close<CR>', { buffer = true, noremap = true, silent = true, desc = 'Close Quickfix' })
  end,
  desc = 'Bind q to close quickfix',
  group = myGeneralAutoCmds,
})
