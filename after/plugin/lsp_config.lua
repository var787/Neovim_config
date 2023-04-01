
local lsp = require("lsp-zero")
local lspconfig = require('lspconfig')
local masonconfig = require('mason-lspconfig')

lsp.preset("recommended")

masonconfig.setup_handlers({
	["lua_ls"] = function ()
		lspconfig.lua_ls.setup {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" }
					}
				}
			}
		}
	end,
})

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()
