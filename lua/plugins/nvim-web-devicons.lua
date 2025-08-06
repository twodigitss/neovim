return {
  "nvim-tree/nvim-web-devicons",
  opts = {
    color_icons = true;
    override = {
      default_icon = { icon = "", name = "Default" },
      lock = { icon = "󰌾", name = "lock" },
      js = { icon = "", color = "#f8e45c", name = "javascript" },
      jsx = { icon = "", color = "#f8e45c", name = "javascriptreact" },
      ts = { icon  = "", color = "#3399ff", name = "typescript" },
      tsx = { icon  = "", color = "#3399ff", name = "typescriptreact" },
      json = { icon  = "", color = "#f8e45c", name = "json" },
      css = { icon  = "󰕗", color = "#c0c0c0", name = "css" },
      html = { icon  = "󰅴", --[[color = "#eda253",]] name = "html" },
    },
    override_by_filename = {
      ["package.json"] = {
        icon = "",
        color = "#66ff66",
        name = "NpmPackageJson"
      },
      ["package-lock.json"] = {
        icon = "󰌾",
        name = "NpmPackageLock"
      },
      ["env.d.ts"] = {
        icon = "",
        color = "#999999",
        name = "readme"
      },
    },
    override_by_extension = {
      ["md"] = {
        icon = "",
        name = "readme"
      }
    },

  }

}
