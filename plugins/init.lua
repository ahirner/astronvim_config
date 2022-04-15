return {
	{
		"nyngwang/NeoRoot.lua",
		cmd = "NeoRoot",
	},
	{
		"https://gitlab.com/yorickpeterse/nvim-window.git",
		module = "nvim-window",
		config = function()
			require("nvim-window").setup({
				normal_hl = "WinJumpColor",
				hint_hl = "Bold",
				border = "none",
			})
		end,
	},
	{
		"ur4ltz/surround.nvim",
		event = "BufRead",
		config = function()
			require("surround").setup({ mappings_style = "surround" })
		end,
	},
	{
		"phaazon/hop.nvim",
		branch = "v1", -- optional but strongly recommended
		cmd = {
			"HopChar1CurrentLine",
			"HopChar2",
		},
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	},
	{
		"beauwilliams/focus.nvim",
		cmd = {
			"FocusSplitNicely",
			"FocusToggle",
			"FocusSplitRight",
			"FocusSplitLeft",
			"FocusSplitBottom",
			"FocusSplitTop",
			"FocusSplitMaximise",
			"FocusSplitEqualise",
		},
		config = function()
			require("focus").setup({
				excluded_filetypes = { "toggleterm", "Mundo", "TelescopePrompt", "MundoDiff" },
				compatible_filetreess = { "neotree" },
			})
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
		config = function()
			require("lsp_signature").setup()
		end,
	},
	{
		"KabbAmine/vCoolor.vim",
		cmd = "VCoolor",
	},
	{
		"mfussenegger/nvim-dap",
		module = "dap",
		config = require("user.plugins.nvim-dap"),
	},
	{
		"rcarriga/nvim-dap-ui",
		after = "nvim-dap",
		config = require("user.plugins.nvim-dapui"),
	},
	{
		"sindrets/winshift.nvim",
		cmd = "WinShift",
		config = require("user.plugins.WinShift"),
	},
	{
		"nvim-telescope/telescope-dap.nvim",
		module = "telescope._extensions.dap",
		config = function()
			require("telescope").load_extension("dap")
		end,
	},
	{
		"benfowler/telescope-luasnip.nvim",
		module = "telescope._extensions.luasnip",
		config = function()
			require("telescope").load_extension("luasnip")
		end,
	},
	{
		"nvim-telescope/telescope-packer.nvim",
		module = "telescope._extensions.packer",
		config = function()
			require("telescope").load_extension("packer")
		end,
	},
	{
		"jvgrootveld/telescope-zoxide",
		module = "telescope._extensions.zoxide",
		config = function()
			require("telescope").load_extension("zoxide")
		end,
	},
	{
		"rmagatti/auto-session",
	},
	{
		"rmagatti/session-lens",
		cmd = "SearchSession",
		config = function()
			require("session-lens").setup({
				path_display = { "shorten" },
				previewer = true,
				theme_conf = {
					prompt_prefix = " ",
					selection_caret = "❯ ",
					path_display = { "truncate" },
					selection_strategy = "reset",
					sorting_strategy = "ascending",
					layout_strategy = "horizontal",
					layout_config = {
						horizontal = {
							prompt_position = "top",
							preview_width = 0.55,
							results_width = 0.8,
						},
						vertical = {
							mirror = false,
						},
						width = 0.87,
						height = 0.80,
						preview_cutoff = 120,
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-project.nvim",
		module = "telescope._extensions.project",
		config = function()
			require("telescope").load_extension("project")
		end,
	},
}
