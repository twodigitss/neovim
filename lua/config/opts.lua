-- VISUALS
vim.o.showtabline = 1                -- Por defecto es 1, desactiva la barra de pestañas
--vim.opt.cmdheight = 0                -- Esconde la barra del MODE y otras cosas

vim.opt.termguicolors = true
vim.cmd('colorscheme midnight')
vim.opt.winborder = 'solid'         -- Options: 'single', 'double', 'rounded', 'solid', 'shadow', or 'none'

vim.g.mapleader = " "                -- Importante: define la tecla líder
vim.opt.clipboard = 'unnamedplus'    -- Buffer y clipboard unificados 

vim.opt.signcolumn = "yes:1"         -- Muestra columna de signos con ancho 1

vim.opt.number = true                -- Muestra números de línea
vim.opt.relativenumber = true    -- Valor por defecto, removido
vim.wo.cursorline = false             -- Resalta la línea actual del cursor

vim.o.showmatch = true               -- Resalta paréntesis/llaves coincidentes
vim.o.expandtab = true               -- Convierte tabs en espacios
vim.o.hlsearch = true                -- Resalta resultados de búsqueda
vim.o.wildmode = 'list:longest,full' -- Personaliza el comportamiento del autocompletado

-- UTILS
vim.o.ignorecase = true              -- Búsquedas insensibles a mayúsculas/minúsculas
vim.o.wildignorecase = true          -- Autocompletado insensible a mayúsculas/minúsculas
vim.o.smartcase = true               -- Búsqueda sensible cuando se usa mayúsculas
vim.o.smartindent = true             -- Indentación inteligente para código
vim.o.copyindent = true              -- Copia estructura de indentación de líneas existentes
vim.o.tabstop = 2                    -- Ancho visual de un tab
vim.o.shiftwidth = 2                 -- Espacios para autoindentación

-- FOLDS
vim.o.foldenable = true
vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldtext = ""
vim.opt.fillchars = { eob = " " }
vim.opt.fillchars:append({ vert = " ", fold = " " })
vim.opt.fillchars:append( "foldclose:󰅂,foldopen:󰅀")

vim.o.viewoptions = 'folds,cursor'   -- Qué guardar en archivos de vista
vim.o.sessionoptions = 'folds'       -- Qué guardar en sesiones
-- vim.o.foldmethod = 'manual'          -- Método de plegado manual
vim.o.foldnestmax = 10               -- Nivel máximo de anidamiento de pliegues
vim.o.foldlevel = 99                 -- Nivel alto para que los pliegues estén abiertos por defecto
vim.o.foldlevelstart = 99            -- Nivel inicial de plegado al abrir un archivo

-- ARCHIVO Y BACKUP MANAGEMENT (prevenir conflictos)
vim.o.hidden = true                  -- Permite cambiar buffers sin guardar
vim.o.autoread = true                -- Recarga automáticamente archivos modificados externamente
vim.o.confirm = true                 -- Pide confirmación al salir con cambios sin guardar

-- Gestión de archivos temporales (desactivados para evitar conflictos)
vim.o.swapfile = false               -- Desactiva archivos swap
vim.o.backup = false                 -- Desactiva archivos de backup
vim.o.writebackup = false            -- No crea backup antes de escribir un archivo

-- Persistencia y recuperación
vim.o.undofile = true                -- Historial de deshacer persistente entre sesiones

-- Rendimiento y memoria
vim.o.lazyredraw = true              -- No redibujar pantalla durante macros (mejora rendimiento)
vim.o.updatetime = 300               -- Por defecto es 4000ms, bajamos para mejor experiencia
vim.o.timeoutlen = 500               -- Por defecto es 1000ms, bajamos para mayor rapidez
vim.o.ttimeoutlen = 10               -- Tiempo para códigos de teclas específicos

-- UI mejorada
vim.o.splitbelow = true              -- Divide horizontalmente hacia abajo
vim.o.splitright = true              -- Divide verticalmente hacia la derecha
vim.o.scrolloff = 8                  -- Mantiene líneas visibles arriba/abajo del cursor
vim.o.sidescrolloff = 8              -- Mantiene columnas visibles a izquierda/derecha del cursor
vim.opt.wrap = false                 -- Desactiva el ajuste de línea

-- Soporte para codificación y formato
vim.o.fileencoding = 'utf-8'         -- Codificación de archivos predeterminada
