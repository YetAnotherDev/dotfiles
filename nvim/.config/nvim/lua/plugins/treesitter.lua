-- file: lua/plugins/treesitter.lua or similar
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(
        opts.ensure_installed,
        { "c_sharp", "razor", "vim", "regex", "lua", "bash", "markdown", "markdown_inline", "templ" }
      )
    end,
  },
}
