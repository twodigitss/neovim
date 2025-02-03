return {
   "akinsho/bufferline.nvim", 
   opts = {
     options = {
       mode = "tabs",
        diagnostics = "nvim_lsp",
        -- indicator = { icon = "", style = none },
        offsets = {{
          filetype = "NvimTree", 
          text = "", 
          text_align = "center",
          highlight = "Directory",
        }},
      }
    }
}
