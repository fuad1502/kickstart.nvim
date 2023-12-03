require("toggleterm").setup {
  size = vim.o.columns * 0.4,
  open_mapping = [[<C-t>]],
  direction = 'vertical',
}

vim.keymap.set('t', '<C-[>', [[<C-\><C-n>]])
