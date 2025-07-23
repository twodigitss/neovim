-- VISUALS
vim.o.showtabline = 0                -- Por defecto es 1, desactiva la barra de pestañas
-- vim.opt.cmdheight = 0                -- Esconde la barra del MODE y otras cosas
-- vim.o.tabline = "%!v:lua.MyTabLine()"

-- because colorizer plugin asked
vim.opt.termguicolors = true
vim.cmd('syntax enable')
vim.cmd('colorscheme ron')
vim.cmd('colorscheme lackluster-mint')

vim.opt.fillchars = { eob = " " }
vim.opt.fillchars:append({ vert = " ", fold = " " })
vim.g.mapleader = " "                -- Importante: define la tecla líder

vim.opt.signcolumn = "yes:1"         -- Muestra columna de signos con ancho 1

vim.opt.number = true                -- Muestra números de línea
-- vim.opt.relativenumber = false    -- Valor por defecto, removido
vim.wo.cursorline = true             -- Resalta la línea actual del cursor
vim.o.showmatch = true               -- Resalta paréntesis/llaves coincidentes
-- vim.o.autoindent = true           -- Ya activado por defecto en Neovim
vim.o.expandtab = true               -- Convierte tabs en espacios
-- vim.o.incsearch = true            -- Ya activado por defecto en Neovim
vim.o.hlsearch = true                -- Resalta resultados de búsqueda
-- vim.o.wildmenu = true             -- Ya activado por defecto
vim.o.wildmode = 'list:longest,full' -- Personaliza el comportamiento del autocompletado

-- UTILS
-- vim.o.mouse = 'a'                 -- Ya activado por defecto en Neovim
-- vim.o.compatible = false          -- Ya desactivado por defecto en Neovim
vim.o.ignorecase = true              -- Búsquedas insensibles a mayúsculas/minúsculas
vim.o.wildignorecase = true          -- Autocompletado insensible a mayúsculas/minúsculas
vim.o.smartcase = true               -- Búsqueda sensible cuando se usa mayúsculas
vim.o.smartindent = true             -- Indentación inteligente para código
vim.o.copyindent = true              -- Copia estructura de indentación de líneas existentes
-- vim.o.smarttab = true             -- Ya activado por defecto en Neovim
vim.o.tabstop = 2                    -- Ancho visual de un tab
vim.o.shiftwidth = 2                 -- Espacios para autoindentación

-- FOLDS
vim.o.viewoptions = 'folds,cursor'   -- Qué guardar en archivos de vista
vim.o.sessionoptions = 'folds'       -- Qué guardar en sesiones
-- vim.o.foldenable = true           -- Ya activado por defecto
vim.o.foldmethod = 'manual'          -- Método de plegado manual
-- vim.o.foldcolumn = '0'            -- Ya es 0 por defecto
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
-- vim.o.undolevels = 1000           -- Es el valor por defecto
-- vim.o.undoreload = 10000          -- Es el valor por defecto

-- Rendimiento y memoria
vim.o.lazyredraw = true              -- No redibujar pantalla durante macros (mejora rendimiento)
-- vim.o.history = 1000              -- Ya es 1000 por defecto en Neovim
vim.o.updatetime = 300               -- Por defecto es 4000ms, bajamos para mejor experiencia
-- vim.o.timeout = true              -- Ya activado por defecto
vim.o.timeoutlen = 500               -- Por defecto es 1000ms, bajamos para mayor rapidez
vim.o.ttimeoutlen = 10               -- Tiempo para códigos de teclas específicos

-- UI mejorada
vim.o.splitbelow = true              -- Divide horizontalmente hacia abajo
vim.o.splitright = true              -- Divide verticalmente hacia la derecha
vim.o.scrolloff = 8                  -- Mantiene líneas visibles arriba/abajo del cursor
vim.o.sidescrolloff = 8              -- Mantiene columnas visibles a izquierda/derecha del cursor
-- vim.opt.wrap = false                 -- Desactiva el ajuste de línea

-- Soporte para codificación y formato
vim.o.fileencoding = 'utf-8'         -- Codificación de archivos predeterminada
-- vim.o.fileformats = 'unix,dos,mac' -- Ya es el valor por defecto
