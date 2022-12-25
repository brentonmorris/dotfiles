local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	autopairs = {
		enable = true,
	},
  endwise = {
    enable = true
  },
	-- ensure_installed = { "ruby", "python", "typescript", "javascript" }, -- one of "all" or a list of languages
	ensure_installed = "all",

	ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
	highlight = {
		enable = true,
		-- disable = { "css" }, -- list of language that will be disabled
	},
	-- indent = { enable = true, disable = { "python", "css" } },
	-- indent = { enable = true  },
})
