local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
	vim.lsp.buf.format({
		filter = function(client)
			-- use only null-ls for formatting (eg, not tsserver)
			return client.name == "null-ls"
		end,
		bufnr = bufnr,
	})
end

null_ls.setup({
	sources = {
		-- null_ls.builtins.diagnostics.ansiblelint,
		-- null_ls.builtins.diagnostics.jsonlint,
		-- null_ls.builtins.diagnostics.luacheck,
		-- null_ls.builtins.diagnostics.markdownlint,
		-- null_ls.builtins.diagnostics.ruff,
		-- null_ls.builtins.diagnostics.shellcheck,
		-- null_ls.builtins.diagnostics.yamllint,
		-- null_ls.builtins.diagnostics.hadolint,

		null_ls.builtins.formatting.beautysh,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.xmlformat,
		null_ls.builtins.formatting.yamlfmt,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			-- vim.api.nvim_create_autocmd("BufWritePre", {
			-- 	group = augroup,
			-- 	buffer = bufnr,
			-- 	callback = function()
			-- 		lsp_formatting(bufnr)
			-- 	end,
			-- })
		end
		local bufopts = { desc = "Format document", noremap = true, silent = true, buffer = bufnr }
		vim.keymap.set("n", "<leader>f", lsp_formatting, bufopts)
	end,
})

vim.api.nvim_create_user_command("DisableLspFormatting", function()
	vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
end, { nargs = 0 })
