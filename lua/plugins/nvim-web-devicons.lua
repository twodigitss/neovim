return {
  "nvim-tree/nvim-web-devicons",
  opts = {
    color_icons = true;
    override = {
      default_icon = { icon = "󰈚", name = "Default" },
      lock = { icon = "󰌾", name = "lock" },
      js = { icon = "", color = "#f8e45c", name = "javascript" },
      ts = { icon  = "", color = "#3399ff", name = "typescript" },
      json = { icon  = "", --[[color = "#f8e45c",]] name = "json" },
      css = { icon  = "#", name = "css" },
      html = { icon  = "󰅴", color = "#3c9cd7", name = "html" },
      md = { icon  = "", name = "markdown" },

    },
    override_by_filename = {
      ["package.json"] = {
        icon = "",
        color = "#66ff66",
        name = "NpmPackageJson"
      },
      ["package-lock.json"] = {
        icon = "󰌾",
        -- color = "#66ff66",
        name = "NpmPackageLock"
      },
      ["README.md"] = {
        icon = "󰦪",
        name = "readme"
      },
      ["env.d.ts"] = {
        icon = "",
        color = "#999999",
        name = "readme"
      },
    },

  }

}
