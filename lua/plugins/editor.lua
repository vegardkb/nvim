return {
  { "dense-analysis/ale" }, -- Optional linter
  { "andymass/vim-matlab" }, -- MATLAB syntax
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "matlab" } },
  },
}
