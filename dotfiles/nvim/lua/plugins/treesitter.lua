return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "c", "cpp", "cuda", "devicetree", "diff", "git_config", "git_rebase", "gitcommit", "objdump", "python", "regex", "rust", "verilog", "vhdl", "yaml"},
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
