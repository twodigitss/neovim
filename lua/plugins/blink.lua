return {
  'saghen/blink.cmp', version = '*',
  dependencies = { 'rafamadriz/friendly-snippets' },
  opts = {
    keymap = { preset = 'enter' },
    sources = {default = { 'lsp', 'path', 'snippets', 'buffer' }},
    fuzzy = {
      implementation = "lua",
    },
    appearance = {
      kind_icons = {
        Text = '󰘎',
        Method = '󰡱',
        Function = '󰡱',
        Constructor = '󰒓',

        Field = '󰜢',
        Variable = '󰒠',
        Property = '󰖷',

        Class = '', --󱡠
        Interface = '',
        Struct = '󰅩',
        Module = '',

        Unit = '󰪚',
        Value = '󰓻',
        Enum = '',
        EnumMember = '󰓻',

        Keyword = '󰍛',
        Constant = '󰏿',

        Snippet = '',
        Color = '󰏘',
        File = '󰈔',
        Reference = '󰬲',
        Folder = '󰉋',
        Event = '󱐋',
        Operator = '󰪚',
        TypeParameter = '󰬛',

      },
    },
    completion = {
      menu = {
        draw = {
          columns = {
            { "label", "label_description", gap = 3 },
            { "kind_icon", "kind", gap = 1 },
          },
        }
      },
      -- documentation = { auto_show = true, window = { border = 'rounded' } },
    },
  }
}
