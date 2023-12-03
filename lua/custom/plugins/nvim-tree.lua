-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function nvim_tree_on_attach(bufnr)
  local api = require "nvim-tree.api"
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
  -- custom mappings
  vim.keymap.set('n', '<leader>t', api.tree.toggle)
end

require("nvim-tree").setup {
  on_attach = nvim_tree_on_attach,
}
vim.keymap.set('n', '<leader>t', require("nvim-tree.api").tree.toggle)
