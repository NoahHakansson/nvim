-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local icons = require('utils.icons')

-- filetype: neo-tree
local M = {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', ':Neotree reveal toggle<CR>', { desc = 'NeoTree reveal' } },
  },
}

function M.config()
  require('neo-tree').setup({
    open_files_do_not_replace_types = { 'terminal', 'trouble', 'qf', 'NeogitStatus', 'NeogitCommitView' }, -- when opening files, do not use windows containing these filetypes or buftypes
    window = {
      mappings = {
        ['l'] = 'open',
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['<leader>e'] = 'close_window',
        },
      },
      filtered_items = {
        visible = true,
      },
    },
    -- FIXME: this is not working (possibly because of nvim 0.10.0)
    -- default_component_config = {
    --   git_status = {
    --     symbols = {
    --       -- Change type
    --       added = icons.git.LineAdded, -- or "✚", but this is redundant info if you use git_status_colors on the name
    --       modified = icons.git.LineModified, -- or "", but this is redundant info if you use git_status_colors on the name
    --       deleted = icons.git.FileDeleted, -- this can only be used in the git_status source
    --       renamed = icons.git.FileRenamed, -- this can only be used in the git_status source
    --       -- Status type
    --       untracked = icons.git.FileUntracked,
    --       ignored = icons.git.FileIgnored,
    --       unstaged = icons.git.FileUnstaged,
    --       staged = icons.git.FileStaged,
    --       conflict = icons.git.Diff,
    --     },
    --   },
    -- },
  })
end

return M
