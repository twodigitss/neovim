local lush = require('lush')
local hsl = lush.hsl

local ref = {
  background = hsl(0, 0, 8),
  foreground = hsl(0, 0, 100),

  morganite  = hsl(337, 100, 85),
  pink       = hsl(290, 100, 90),
  statement  = hsl(258, 100, 80),
  opal       = hsl(218, 100, 85),
  cyan       = hsl(210, 100, 80),
  yellow     = hsl(40,  100, 85),
  green      = hsl(89,  100, 80);
  orange     = hsl(10,  100, 80);
}


---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
      --   <HighlightGroupName> { 
        --   bg = <hsl>|<string>,
        --   fg = <hsl>|<string>,
        --   sp = <hsl>|<string>,
        --   gui = <string>,
      --   ... },

    Normal      { bg = ref.background, fg = ref.foreground },
    CursorLine  { bg = Normal.bg.lighten(10) },
    Visual      { bg = Normal.bg.lighten(5)  },
    StatusLine  { bg = Normal.bg.li(-50), fg =ref.foreground},
    StatusLineNC{ bg = Normal.bg.li(-20), fg =ref.foreground},

    Statement   { fg = ref.statement },
    Identifier  { fg = ref.morganite },
    Function    { fg = ref.cyan },
    String      { fg = ref.green.li(30)},
    -- Number      { fg = ref.yellow},

    Special     { fg = ref.foreground.li(-30) }, --brackets
    Comment     { fg = ref.opal.li(-55).de(90) }, --desaturate, lighten, rotate

    -- Besides directly using group properties, we can define two relationships
    -- between groups, "link" and "inherit".
    --
    -- Link is natively supported by Neovim (see `:h hl-link`), both groups
    -- will appear the same, and changes to the "root" will effect the other.
    --
    -- Inherit groups behave similarly to link, but the parent group properties
    -- are copied to the child, and then any changed properties override the
    -- parent.

    -- For example, let's "link" CursorColumn to CursorLine.
    -- (If disabled: `setlocal cursorcolumn`)
    -- CursorColumn { CursorLine }, -- CursorColumn is linked to CursorLine

    -- Or we can make LineNr inherit from Comment, but we'll adjust the gui
    -- property (`setlocal number`)

    -- LineNr { Comment, gui = "italic" },
    -- Try writing your own above and below line number groups, and
    -- experiment with the different operations listed at the start of this
    -- file.
    -- LineNrBelow { LineNr },
    -- LineNrAbove { LineNr },
    -- CursorLineNr { LineNr, fg = CursorLine.bg.mix(Normal.fg, 50) },

    -- Finally you can also use highlight groups to define "base" colors, if
    -- you dont want to use regular Lua variables. They will behave in the same
    -- way. Note that these groups *will* be defined as a vim-highlight-group,
    -- so try not to pick names that might end up being used by something else.
    --
    -- CamelCase is by tradition but you don't have to use it.
    -- search_base  { bg = hsl(52, 52, 52), fg = hsl(52, 10, 10) },
    -- Search       { search_base },
    -- IncSearch    { bg = search_base.bg.ro(-20), fg = search_base.fg.da(90) },
  }
end)

-- Return our parsed theme for use and that's the basics of using Lush!
-- The parsed theme can be used as a neovim theme, or extended further via Lush,
-- or used elsewhere such as in other lua runtimes.
return theme



-- ###
-- ### Other tools
-- ###
--
-- By default, lush() actually returns your theme as a table. You can
-- interact with it in much the same way as you can inside a lush-spec.
--
-- This looks something like:
--
--   local theme = lush(function()
--     -- define a theme
--     return {
--       Normal { fg = hsl(0, 100, 50) },
--       CursorLine { Normal },
--     }
--   end)
--
--   -- behaves the same as above:
--   theme.Normal.fg()                     -- returns table {h = h, s = s, l = l}
--   tostring(theme.Normal.fg)             -- returns "#hexstring"
--   tostring(theme.Normal.fg.lighten(10)) -- you can still modify colors, etc
--
-- This means you can `require('my_lush_file')` in any lua code to access your
-- themes's color information (including outside of neovim).
--
-- Note:
--
-- "Linked" groups do not expose their colors, you can find the key
-- of their linked group via the 'link' key (may require chaining)
--
--   theme.CursorLine.fg() -- This is bad!
--   theme.CursorLine.link -- = "Normal"
--
-- Also Note:
--
-- Most plugins expose their own Highlight groups, which *should be the primary
-- method for setting theme colors*, there are however some plugins that
-- require adjustments to a global or configuration variable.
--
-- To set a global variable, use neovims lua bridge,
--
--   vim.g.my_plugin.color_for_widget = theme.Normal.fg.hex
--
--
-- For more information, see the README.md, CREATE.md, EXTEND.md and `:h lush`.

-- vi:nowrap:number
