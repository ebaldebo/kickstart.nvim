return {
  'sindrets/diffview.nvim',
  requires = 'nvim-lua/plenary.nvim',
  config = function()
    require('diffview').setup {}
    local function toggle_diffview()
      local view = require('diffview.lib').get_current_view()
      if view then
        vim.cmd 'DiffviewClose'
      else
        vim.cmd 'DiffviewOpen'
      end
    end
    vim.api.nvim_create_user_command('ToggleDiffview', toggle_diffview, {})
    vim.api.nvim_set_keymap('n', '<leader>dt', ':ToggleDiffview<CR>', { noremap = true, silent = true })
  end,
}
