local function is_active()
  local ok, hydra = pcall(require, 'hydra.statusline')
  return ok and hydra.is_active()
end

local function get_name()
  local ok, hydra = pcall(require, 'hydra.statusline')
  if ok then
    return hydra.get_name()
  end
  return ''
end

--- for lualine add this component
local hydra = { get_name, cond = is_active }

return hydra
