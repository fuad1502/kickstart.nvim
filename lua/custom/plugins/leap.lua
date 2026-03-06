return {
  url = 'https://codeberg.org/andyg/leap.nvim',
  lazy = false,
  config = function()
    vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
    vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')
    vim.keymap.set('n', 'gs', '<Plug>(leap-from-window)')
    require('leap').opts.special_keys.prev_target = '<bs>'
    require('leap').opts.special_keys.prev_group = '<bs>'
    require('leap.user').set_repeat_keys('<cr>', '<bs>')
  end,
}
