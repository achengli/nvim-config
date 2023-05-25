function os.scandir(directory)
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls -a "' .. directory .. '"')
    assert(pfile, 'file was not opened correctly')
    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
    end
    pfile:close()
    return t
end

local files = os.scandir(os.getenv('PWD'))
for _, f in pairs(files) do
    if string.match(f, '%.nvim%.lua$') then
        loadfile(os.getenv('PWD') .. '/' .. f, 't')()
    end
end

