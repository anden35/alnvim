return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Optional, for file icons
    config = function()
      require('oil').setup {
        -- Optional: Customize oil.nvim settings
        default_file_explorer = true, -- Replace netrw
        columns = { 'icon' }, -- Show these columns
        view_options = { show_hidden = true }, -- Show hidden files
      }
      -- Optional keymap to open oil.nvim
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open Oil file explorer' })
    end,
  },
}
