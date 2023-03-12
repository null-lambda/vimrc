return {
  -- Status Bar at bottom
  -- { 'ojroques/nvim-hardline',
  --  config = function() require('hardline').setup() end
  -- },
  { 'nvim-lualine/lualine.nvim',
    config = function() 
    require('lualine').setup {
      options = {
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '|' },
      },
      extensions = {
        'nvim-tree'
      },
      tabline = {
        lualine_a = {'tabs'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = { { 'buffers', show_filename_only = false }},
        lualine_y = {},
        lualine_z = {}
      },
      sections = {
        lualine_a = { { '" "', padding = 0 } },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { { 'filetype', icon_only = true }, { 'filename', padding = 0} },
        lualine_x = { 'searchcount', 'encoding', 'fileformat' },
        lualine_y = { 'progress', 'location' },
        lualine_z = { { '" "', padding = 0 } },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      }
    }
    end
  },
}
