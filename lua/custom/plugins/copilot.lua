return {
  'github/copilot.vim',
  lazy = false,
  config = function()
    vim.keymap.set('i', '<C-O>', 'copilot#Accept("<CR>")', {
      expr = true,
      replace_keycodes = false,
    })
    vim.g.copilot_no_tab_map = true
    vim.keymap.set('i', '<C-J>', '<Plug>(copilot-next)')
    vim.keymap.set('i', '<C-K>', '<Plug>(copilot-prev)')
  end,
}
