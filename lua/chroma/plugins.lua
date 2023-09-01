local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",

  -- color schemes
   --"LunarVim/Colorschemes",
   --"Mofiqul/vscode.nvim",
  "folke/tokyonight.nvim",
   --"sainnhe/sonokai",

  -- completion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",

  -- LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "simrat39/rust-tools.nvim",

  -- peartree
  "tmsvg/pear-tree"
})
