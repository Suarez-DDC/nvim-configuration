-- Neovim API aliases
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt
vim.cmd('autocmd!')
vim.cmd [[colorscheme catppuccin]]

-- General settings
g.mapleader = ' ' 
g.catppuccin_flavour = 'macchiato'

-- UI settings
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.clipboard = 'unnamedplus'
opt.fileencoding = 'utf-8'

opt.title = true
opt.number = true
opt.mouse = 'a'
opt.relativenumber = true
opt.autoindent = true
opt.smartindent = true
opt.autowrite = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 10
opt.ignorecase = true
opt.smarttab = true
opt.breakindent = true
opt.wrap = false
--opt.shiftwidth = 2
opt.tabstop = 2

--Highlights
opt.termguicolors = true
opt.winblend = 0
opt.wildoptions = 'pum'
opt.pumblend = 5 
opt.background = 'dark'


-- Spanish Markdown corrector
exec ([[
        augroup markdownSpell
                autocmd!
                autocmd FileType markdown setlocal spell spelllang=es
                autocmd BufRead, BufNewFile *.md setlocal spell spelllang=es
        augroup END
       ]], false)
-- cuando se cree un .md y se quiera habilitar el corrector -> :set spell
-- para deshabilitarlo -> :set nospell.
-- para buscar la corrección -> z=
-- para reproducir el cambio en todas las palabras iguales -> :spellrepall

