local ok,res = pcall(require,'init')
if not ok then
    error "bad loading"
end

require'colorizer'.setup()
