local servers = {
	python = {
		cmd = { "pyright-langserver", "--stdio" },
		root_markers = { "pyproject.toml" }
	},

	c = {
		cmd = { "clangd" },
		root_markers = { "compile_commands.json" }
	},

	cpp = {
	    cmd = { "clangd" },
	    root_markers = { "compile_commands.json" }
	},
	rust = {
		cmd = { "rust-analyzer" },
		root_markers = { "Cargo.toml" }
	},
  	lua = {
		cmd = { "lua-language-server" },
		root_markers = { ".luarc.json" },
		settings = { Lua = {
			runtime = { version = "LuaJIT" }, 
			diagnostics = { globals = { "vim" } }
		} },
	},
}

for name, config in pairs(servers) do
	vim.lsp.config[name] = vim.tbl_extend("force", {
		name = name,
		filetypes = { name },
	}, config)
	vim.lsp.enable(name)
end

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = true,
	underline = true,
	severity_sort = true,
})
