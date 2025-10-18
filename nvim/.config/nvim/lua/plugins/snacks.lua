return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      -- Find Files / files source
      files = {
        ignored = true, -- honor .gitignore / .ignore
        hidden = false, -- (optional) keep dotfiles hidden unless toggled
      },
      -- Live Grep / grep source
      grep = {
        -- Make ripgrep obey .gitignore and also hard-exclude node_modules
        args = { "rg", "--hidden", "--glob", "!**/.git/**", "--glob", "!**/node_modules/**" },
      },
      -- Keep “Recent” clean too (optional)
      recent = {
        exclude = { "node_modules/**" },
      },
    },
  },
}
