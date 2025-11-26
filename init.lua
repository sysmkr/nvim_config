-- bootstrap Lazy.nvim (if not already done)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- enable true colors
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
-- tab config
vim.opt.tabstop = 4      -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4   -- Number of spaces for auto-indent
vim.opt.expandtab = false -- Use real tabs, not spaces

-- plugin setup
require("lazy").setup({
    {
        "Shatur/neovim-ayu",
        config = function()
            require("ayu").setup({
                mirage = false,
                overrides = {},
            })
            vim.cmd("colorscheme ayu")
        end,
    },
})

vim.cmd("hi Normal guibg=Black ctermbg=0")
