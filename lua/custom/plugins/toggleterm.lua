require('toggleterm').setup {
  open_mapping = [[<C-t>]],
  direction = 'float',
}

-- Go to normal mode keymap
vim.keymap.set('t', '<C-[>', [[<C-\><C-n>]])

-- Custom commands to terminal
local M = {}

local function term_cd(dir)
  require('toggleterm').exec(string.format('cd %s', dir) .. ' && clear')
end

M.term_cd = term_cd

return M
