-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local dap = require("dap")

dap.adapters.coreclr = {
  type = "executable",
  command = "/home/nenter/.local/share/nvim/mason/packages/netcoredbg/netcoredbg",
  args = { "--interpreter=vscode" },
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    env = {
      ASPNETCORE_ENVIRONMENT = "Development",
    },
    program = function()
      return vim.fn.input("Path to dll", vim.fn.getcwd() .. "/bin/Debug/net8.0/", "file")
    end,
  },
}
