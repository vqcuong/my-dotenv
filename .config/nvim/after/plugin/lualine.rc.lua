local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local function os_icon()
	return ""
end

lualine.setup({
	theme = "auto",
	options = {
		icons_enabled = true,
		theme = "solarized_dark",
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		disabled_filetypes = {},
	},
	sections = {
		lualine_a = {
			os_icon,
			{
				"mode",
				fmt = function(str)
					return " " .. str
				end,
			},
		},
		lualine_b = { "branch", "diff" },
		lualine_c = { {
			"filename",
			file_status = true,
			path = 0,
		} },
		lualine_x = {
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = {
					error = " ",
					warn = " ",
					info = " ",
					hint = " ",
				},
			},
			"encoding",
			"filetype",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {
			{
				"filename",
				file_status = true, -- displays file status (readonly status, modified status)
				path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
			},
		},
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = { "fugitive" },
})
