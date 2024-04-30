return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "lua", "javascript", "html", "python", "htmldjango"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
