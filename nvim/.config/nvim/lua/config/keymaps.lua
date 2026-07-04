-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
vim.keymap.set("n", "<leader>!", function()
  vim.fn.jobstart("live-server .", {
    detach = true,
    cwd = vim.fn.getcwd(),
  })
end, { desc = "Start live-server" })
