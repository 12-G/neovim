local opt, fn = vim.opt, vim.fn
local cache_dir = fn.stdpath('cache')

-- UI
opt.scrolloff = 4
opt.sidescrolloff = 8
opt.termguicolors = true
opt.number = true
opt.signcolumn = 'yes'
opt.colorcolumn = '80'
opt.showmode = false
opt.shortmess = 'aoOTIcF'
opt.ruler = false
opt.showtabline = 0
opt.winwidth = 30
opt.showcmd = false
opt.cmdheight = 0
opt.laststatus = 3
opt.autoindent = true

-- virtual mode
opt.virtualedit = 'block'

-- change some default directory
opt.directory = cache_dir .. '/swap/'
opt.undodir = cache_dir .. '/undo/'
opt.backupdir = cache_dir .. '/backup/'
opt.viewdir = cache_dir .. '/view/'
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- determine the behavior when part of a mapped key sequence has been received.
opt.timeout = true
opt.timeoutlen = 300
opt.ttimeoutlen = 10
opt.updatetime = 250

-- search
opt.ignorecase = true
opt.smartcase = true
opt.infercase = true
opt.magic = true
opt.wildignorecase = true

-- split
opt.splitbelow = true
opt.splitright = true

-- list mode
opt.list = true
opt.listchars = 'tab:»·,nbsp:+,trail:·,extends:→,precedes:←'

-- floating window and popup menu setting
opt.pumblend = 15
opt.pumheight = 15
opt.completeopt = 'menu,menuone,noselect,noinsert'
opt.winblend = 10

-- Tab
opt.smarttab = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.diffopt:append('linematch:50')

-- wrap
opt.linebreak = true
opt.whichwrap = 'h,l,<,>,[,],~'
opt.breakindentopt = 'shift:4,min:20'
opt.showbreak = '↳ '

-- fold
opt.foldlevelstart = 0
opt.foldclose = all
opt.foldmethod = 'marker'

-- shell
opt.shell = '/bin/bash'
opt.lazyredraw = true
opt.shadafile = "NONE"

-- clipboard
opt.clipboard:append('unnamedplus')

local default_providers = {
  "node",
  "perl",
  "python3",
  "ruby",
}

for _, provider in ipairs(default_providers) do
  vim.g["loaded_" .. provider .. "_provider"] = 0
end
