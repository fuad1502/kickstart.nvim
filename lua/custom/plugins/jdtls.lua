return {
  'mfussenegger/nvim-jdtls',
  config = function()
    require('custom.plugins.config.lsp-common').set_keybinding(0)
    local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
    local workspace_dir = '/home/fuad1502/.jdtls-workspace/' .. project_name
    local config = {
      cmd = { '/home/fuad1502/jdtls-1.9/bin/jdtls', '-data', workspace_dir },
      root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
    }
    require('jdtls').start_or_attach(config)
  end,
  ft = 'java',
}
