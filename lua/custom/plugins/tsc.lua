local M = {
  'dmmulroy/tsc.nvim',
  cmd = 'TSC',
}

function M.config()
  require('tsc').setup({
    auto_focus_qflist = true,
  })
end

return M
