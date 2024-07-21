for lang, extension in pairs({ maxima = "*.mac", python = "pythonrc", octave = "*.m" }) do
	vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
		pattern = extension,
		callback = function()
			vim.bo.filetype = lang
		end,
	})
end
