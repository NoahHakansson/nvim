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