return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      -- start with a default
      require("rose-pine").setup({
        variant = "main",
      })

      -- keep track of variants
      local variants = { "main", "moon", "dawn" }
      local current = 1

      -- define a function to cycle them
      local function toggle_variant()
        current = current % #variants + 1
        require("rose-pine").setup({
          variant = variants[current],
        })
        vim.cmd.colorscheme("rose-pine")
        vim.notify("Rose Pine: " .. variants[current], vim.log.levels.INFO)
      end

      -- map it to <leader>ut
      vim.keymap.set("n", "<leader>ut", toggle_variant, { desc = "Toggle rose-pine variant" })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
