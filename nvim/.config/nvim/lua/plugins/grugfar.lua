return {
  {
    "MagicDuck/grug-far.nvim",
    keys = {
      {
        "<leader>sr",
        function()
          require("grug-far").open({
            prefills = { paths = vim.fn.expand("%") },
          })
        end,
        desc = "Search/Replace (current file)",
      },
    },
  },
}
