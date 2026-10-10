require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pyright",
		"clangd",
		"bashls",
		"rust_analyzer",
		"ts_ls",
		"html",
		"cssls",
		"jsonls",
	},
	automatic_enable = true,
})
vim.lsp.config("clangd", {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--header-insertion=iwyu",
		"--completion-style=detailed",
		"--function-arg-placeholders",
		"--fallback-style=llvm",
		"--query-driver=/usr/bin/g++",
	},
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	pattern = "*",
-- 	callback = function()
-- 		vim.lsp.buf.format({ async = false })
-- 	end,
-- 	desc = "Форматирование через LSP перед сохранением",
-- })
