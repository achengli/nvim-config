return {setup = function (data)
	vim.opt.tabstop=2
	vim.opt.shiftwidth=2
	
	local r, ok = pcall('require', 'config.plugins.plug')
	if not ok then
		print'Error loading plugins'
	end
end}


