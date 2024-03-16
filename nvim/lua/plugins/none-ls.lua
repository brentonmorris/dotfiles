return {
	"nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
        -- require("none-ls.diagnostics.cpplint"),
        -- require("none-ls.code_actions.eslint"),

        -- Ruby
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.rubocop,

        -- Python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,

        -- Lua
				null_ls.builtins.formatting.stylua,

        -- JavaScript
        require("none-ls.code_actions.eslint"),
        null_ls.builtins.formatting.prettier,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
