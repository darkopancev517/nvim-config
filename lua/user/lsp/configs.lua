local mason_ok, mason = pcall(require, "mason")
if not mason_ok then
  return
end

local mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_ok then
  return
end

local lspconfig = require("lspconfig")

local servers = {
  "cssls",
  "cssmodules_ls",
  "emmet_ls",
  "html",
  "jsonls",
  "lua_ls",
  "pyright",
  "tailwindcss",
  "tsserver",
}

local install_servers = {
  "cssls",
  "cssmodules_ls",
  "emmet_ls",
  "html",
  "jsonls",
  "lua_ls",
  "pyright",
  "tailwindcss",
  "tsserver",
}

mason.setup()
mason_lspconfig.setup({
  ensure_installed = install_servers,
})

for _, server in pairs(servers) do
  local opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }
  local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server)
  if has_custom_opts then
    opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
  end
  lspconfig[server].setup(opts)
end
