vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.cmd [[filetype plugin on]]
-- vim.g.mapleader = ""

-- Setup persistent undo
if vim.fn.has("persistent_undo") == 1 then
    local target_path = vim.fn.expand('~/.undodir')
    if vim.fn.isdirectory(target_path) == 0 then
        vim.fn.mkdir(target_path, "p", 0700)
    end
    vim.o.undodir = target_path
    vim.o.undofile = true
end

-- Enable Keyboard
vim.o.clipboard = "unnamedplus"

-- Create a Telescope command for configuration files
vim.api.nvim_create_user_command("Config", function()
    require("telescope.builtin").find_files({ cwd = "~/.config/nvim" })
end, {})

-- Color Scheme
vim.o.background = "dark"

-- Enable Keyboard
vim.o.clipboard = "unnamedplus"

-- Create another Telescope command for configuration files (if needed)
vim.api.nvim_create_user_command("Config", function()
    require("telescope.builtin").find_files({ cwd = "~/.config/nvim" })
end, {})

-- Peek for md files
--vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
--vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
