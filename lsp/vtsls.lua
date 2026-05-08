---@brief
---
--- https://github.com/yioneko/vtsls
---
--- `vtsls` can be installed with npm:
--- ```sh
--- npm install -g @vtsls/language-server
--- ```
---
--- To configure a TypeScript project, add a
--- [`tsconfig.json`](https://www.typescriptlang.org/docs/handbook/tsconfig-json.html)
--- or [`jsconfig.json`](https://code.visualstudio.com/docs/languages/jsconfig) to
--- the root of your project.
return {
  cmd = { "vtsls", "--stdio" },
  filetypes = {
    "typescript", "typescriptreact", "typescript.tsx",
    "javascript", "javascriptreact", "javascript.jsx"
  },
  root_markers = { "tsconfig.json", "package.json", ".git" },
  settings = {
    typescript = {
      updateImportsOnFileMove = { enabled = "always" },
      suggest = { completeFunctionCalls = true },
    },
    vtsls = {
      enableMoveToFileCodeAction = true,
    },
  },
}
