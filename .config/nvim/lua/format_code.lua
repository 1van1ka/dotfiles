local cmp = require("cmp")
cmp.setup({
	autocomplete = {
		cmp.TriggerEvent.TextChanged,
		cmp.TriggerEvent.InsertEnter,
	},
	completion = {
		completeopt = "menu,menuone,noinsert,noselect",
	},
	window = {
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		fields = { "menu", "abbr", "kind" },
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = "l",
				buffer = "b",
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
	mapping = {
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
	},
})
