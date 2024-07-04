-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "[", "<CMD>NoiceDismiss<CR>")

-- DAP
local dap = require("dap")

vim.keymap.set("n", "<F9>", function()
  dap.continue()
end, { desc = "Continue", noremap = true, silent = true })

vim.keymap.set("n", "<F10>", function()
  dap.step_over()
end, { desc = "Step Over" })

vim.keymap.set("n", "<F11>", function()
  dap.step_into()
end, { desc = "Step Into", noremap = true, silent = true })

vim.keymap.set("n", "<F12>", function()
  dap.step_over()
end, { desc = "Step Out", noremap = true, silent = true })

-- Harpoon
local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)

vim.keymap.set("n", "1", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "2", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "3", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "4", function()
  harpoon:list():select(4)
end)
vim.keymap.set("n", "5", function()
  harpoon:list():select(5)
end)
