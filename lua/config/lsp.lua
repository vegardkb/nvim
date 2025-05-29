vim.api.nvim_create_autocmd("FileType", {
  pattern = "matlab",
  callback = function()
    vim.lsp.start({
      name = "matlab-language-server",
      cmd = { "matlab-language-server", "--stdio" },
      root_dir = vim.fs.dirname(vim.fs.find({ "main.m", ".git" }, { upward = true })[1]),
    })
  end,
})
