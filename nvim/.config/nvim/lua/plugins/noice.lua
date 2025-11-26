return {
  "folke/noice.nvim",
  branch = "main", -- track the main branch
  version = false, -- always null the latest commit (nightly style)
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  -- https://github.com/seblyng/roslyn.nvim/issues/236
  opts = {
    lsp = {
      progress = {
        enabled = false,
      },
    },
  },
}
