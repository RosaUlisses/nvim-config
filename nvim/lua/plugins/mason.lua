return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "haskell-language-server",
        "haskell-debug-adapter",
        "cpptools",
        "cpplint",
        "json-lsp",
      },
    },
  },
}
