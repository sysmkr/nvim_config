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
            -- vim.cmd("colorscheme ayu") -- Commented out to avoid auto-setting
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- Optional configuration for tokionight
            require("tokyonight").setup({
                style = "night", -- or "storm", "moon", "day"
                transparent = false,
                terminal_colors = true,
            })
            -- vim.cmd("colorscheme tokyonight") -- Commented out to avoid auto-setting
        end,
    },
})

-- Set your preferred colorscheme here (uncomment one)
-- vim.cmd("colorscheme ayu")
vim.cmd("colorscheme tokyonight")

vim.cmd("hi Normal guibg=Black ctermbg=0")

