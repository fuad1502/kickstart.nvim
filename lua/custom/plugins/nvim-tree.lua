-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function nvim_tree_on_attach(bufnr)
  local api = require "nvim-tree.api"
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  local function open_file_and_close_tree()
    -- get the current node
    local node = api.tree.get_node_under_cursor()
    if node then
      api.node.open.edit()
      -- if it's a file, close the tree
      if node.type == 'file' then
        api.tree.close()
    end
  end

  -- default mappings
  vim.keymap.set('n', 'I', api.tree.toggle_gitignore_filter, opts('Toggle Filter: Git Ignore'))
  vim.keymap.set('n', 'a', api.fs.create, opts('Create File Or Directory'))
  vim.keymap.set('n', 'd', api.fs.remove, opts('Delete'))
  vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))
  -- custom mappings
  vim.keymap.set('n', '<leader>t', api.tree.toggle)
  vim.keymap.set('n', '<CR>', open_file_and_close_tree, opts('Open'))
end

require("nvim-tree").setup {
  on_attach = nvim_tree_on_attach,
}
vim.keymap.set('n', '<leader>t', require("nvim-tree.api").tree.toggle)
