return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				background = {
					light = "mocha",
					dark = "mocha",
				},
				transparent_background = true,
				show_end_of_buffer = false,
				term_colors = false,
				dim_inactive = {
					enabled = false,
					shade = "dark",
					percentage = 0.4,
				},
				no_italic = false,
				no_bold = false,
				no_underline = false,
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
				},
				color_overrides = {
					mocha = {
						base = "#000000",
						text = "#fcf99f",
						lavender = "#e869ff",
						blue = "#00e5ff",
						rosewater = "#ff4763",
						red = "#ff478b",
						peach = "#ff8f85",
						mauve = "#ff308a",
						green = "#00fa47",
					},
				},
				custom_highlights = {},
				integrations = {
					cmp = true,
					flash = true,
					gitsigns = true,
					hop = true,
					lsp_saga = true,
					mason = true,
					noice = true,
					notify = true,
					nvimtree = true,
					overseer = true,
					treesitter = true,
					treesitter_context = true,
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				"*",
			})
		end,
	},

	-- {
	-- 	"svrana/neosolarized.nvim",
	-- 	dependencies = { "tjdevries/colorbuddy.nvim" },
	-- 	config = function()
	-- 		local neosolarized = require("neosolarized")
	-- 		neosolarized.setup({ comment_italics = true })
	--
	-- 		local cb = require("colorbuddy.init")
	-- 		local Color = cb.Color
	-- 		local colors = cb.colors
	-- 		local Group = cb.Group
	-- 		local groups = cb.groups
	-- 		local styles = cb.styles
	--
	-- 		Color.new("white", "#ffffff")
	-- 		Color.new("black", "#000000")
	-- 		Group.new("Normal", colors.base1, colors.NONE, styles.NONE)
	-- 		Group.new("CursorLine", colors.none, colors.base03, styles.NONE, colors.base1)
	-- 		Group.new("CursorLineNr", colors.yellow, colors.black, styles.NONE, colors.base1)
	-- 		Group.new("Visual", colors.none, colors.base03, styles.reverse)
	-- 		Group.new("NormalFloat", colors.base1, colors.NONE, styles.NONE)
	--
	-- 		local cError = groups.Error.fg
	-- 		local cInfo = groups.Information.fg
	-- 		local cWarn = groups.Warning.fg
	-- 		local cHint = groups.Hint.fg
	--
	-- 		Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
	-- 		Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
	-- 		Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
	-- 		Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
	-- 		Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
	-- 		Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
	-- 		Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
	-- 		Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)
	--
	-- 		Group.new("HoverBorder", colors.yellow, colors.none, styles.NONE)
	-- 	end,
	-- },
}
