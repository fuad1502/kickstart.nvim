require("toggleterm").setup {
  size = vim.o.columns * 0.4,
  open_mapping = [[<C-t>]],
  direction = 'vertical',
}

-- Go to normal mode keymap
vim.keymap.set('t', '<C-[>', [[<C-\><C-n>]])

-- Custom commands to terminal
local M = {}

local function term_cd(dir)
  require("toggleterm").exec(string.format("cd %s", dir) .. " && clear")
end

M.term_cd = term_cd

return M
