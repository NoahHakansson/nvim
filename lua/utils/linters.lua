local M = {}

local active_linters = {}

function M.list_linters()
  local linters = require('lint').get_running()
  -- remove duplicates
  for key, value in pairs(linters) do
    if vim.tbl_contains(active_linters, value) then
      linters[key] = nil
    end
  end
  -- add new linters to active_linters
  active_linters = vim.list_extend(active_linters, linters)

  return active_linters
end

return M
