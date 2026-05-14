local Sections = {
  "Search  ",
  "Built in  ",
  "Plugins   "
}

local entries = { --they are in order of appearance btw

  { "Recent",       "",  ":lua Snacks.picker.recent()",      Sections[1] }, --
  { "Files",        "",  ":lua Snacks.picker.files(opts)",   Sections[1] }, --
  { "Text",         "",  ":lua Snacks.picker.grep(opts)",    Sections[1] }, --󰘎

  { "NeoTree",      "󰉓",  ":Neotree dir=./",                  Sections[3] }, --󰙅
  -- { "Lazy",         "󰒲",  ":Lazy",                            Sections[3] }, --󰙅

  { "New File",     "󱇬",  ":ene | startinsert",               Sections[2] }, --
  { "Quit",         "󰈆",  ":qa",                              Sections[2] },
}

local max = 0
for _, e in ipairs(entries) do
  if #e[1] > max then max = #e[1] end
end

local items = {}
local padding = 30
for _, e in ipairs(entries) do
  table.insert(items, {
    name    = e[1] .. string.rep(" ", max - #e[1] + padding) .. e[2],
    action  = e[3],
    section = e[4],
  })
end

return {
  "echasnovski/mini.nvim",
  priority = 1000,
  lazy = false,
  config = function(_, opts)
    require("mini.starter").setup(opts)
  end,
  opts = {
    -- Whether to open starter buffer on VimEnter. Not opened if Neovim was
    -- started with intent to show something else.
    autoopen = true,

    -- Whether to evaluate action of single active item
    evaluate_single = false,

    -- Items to be displayed. Should be an array with the following elements:
    -- - Item: table with <action>, <name>, and <section> keys.
    -- - Function: should return one of these three categories.
    -- - Array: elements of these three types (i.e. item, array, function).
    -- If `nil` (default), default items will be used (see |mini.starter|).

    items = { items },

    -- Header to be displayed before items. Converted to single string via
    -- `tostring` (use `\n` to display several lines). If function, it is
    -- evaluated first. If `nil` (default), polite greeting will be used.
    header = [[
                  ||\\ ||
                  || \\||
                  ||  \||

                NVIM v0.12.0

Nvim is open source and freely distributable
           https://neovim.io/#chat
    ]],

    -- Footer to be displayed after items. Converted to single string via
    -- `tostring` (use `\n` to display several lines). If function, it is
    -- evaluated first. If `nil` (default), default usage help will be shown.
    footer = nil,

    -- Array  of functions to be applied consecutively to initial content.
    -- Each function should take and return content for 'Starter' buffer (see
    -- |mini.starter| and |MiniStarter.content| for more details).
    content_hooks = nil,

    -- Characters to update query. Each character will have special buffer
    -- mapping overriding your global ones. Be careful to not add `:` as it
    -- allows you to go into command mode.
    query_updaters = 'abcdefghijklmnopqrstuvwxyz0123456789_-.',
    -- query_updaters = '',

    -- Whether to disable showing non-error feedback
    silent = false,

  }
}

-- vim.list_extend(items, require("mini.starter").sections.recent_files())
