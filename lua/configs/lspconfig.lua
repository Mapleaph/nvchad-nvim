require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "css_ls",
  "clangd",
  "hdl_checker",
  "verible"
}

local nvlsp = require "nvchad.configs.lspconfig"
-- read :h vim.lsp.config for changing options of lsp servers 
