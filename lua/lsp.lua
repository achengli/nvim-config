local ok, mymod = pcall(require, 'module_with_error')

-- Este ejemplo intenta llamar una libreria de forma segura por lo que si no
-- existe no se detiene por error y solo te tira el error.
if not ok then
    print("Module had an error")
else
    mymod.func()
end

package.loaded['myluamodule'] = nil
require('myluamodule') -- read and execute the module again from disk.

-- Uso de funciones nativas de vimscript desde lua
vim.cmd("colorscheme habamax")
vim.cmd("%s/\\Vfoo/bar/g")
vim.cmd([[%s/\Vfoo/bar/g]])
vim.cmd([[
    highlight Error guibg=red
    highlight link Warning Error
]])

vim.cmd.colorscheme("habamax")
vim.cmd.highlight({"Error", "guibg=red"})
vim.cmd.highlight({"link","Warning","Errror"})

-- calling vimscript function from lua
print(vim.fn.printf("Hello from %s","Lua"))
-- llama al reverse de lua
local reversed_list = vim.fn.reverse({'a','b','c'})
print(vim.inspect(reversed_list))
local function print_stdout(chan_id, data, name)
    print(data[1])
end
vim.fn.jobstart('ls',{on_stdout = print_stdout})
print(vim.fn.printf('Hello from %s', 'Lua'))

vim.fn['my#autoload#function']()

-- Declaracion de variables en vimscript desde lua.
vim.g.some_global_variable = {
    key1  = "value", key2 = 300}
print(vim.inspect(vim.g.some_global_variable))
--> {key1= 'value', key2 = 300}
vim.b[2].myvar = 1
vim.w[1005].myothervar = true
vim.g['my#variable'] = 1
vim.g.some_global_variable.key2 = 400
vim.pretty_print(vim.g.some_global_variable)

-- Las variables de vim se acceden con los siguientes accesos:
-- - vim.g globales
-- - vim.b variables dentro del buffer.
-- - vim.w variables dentro de una ventana.
-- - vim.t variables dentro de una pestaña.
-- - vim.v variables vim predefinidas.
-- - vim.env variables de entorno definidas en la sesion del editor.

local temp_table = vim.g.some_global_variable
temp_table.key2 = 400
vim.g.some_global_variable = temp_table
vim.pretty_print(vim.g.some_global_variable)

-- para eliminar una variable
vim.g.myvar = nil

-- uso de opciones
-- set smarttab
-- set nosmarttab

vim.opt.smarttab = true
vim.opt.smarttab = false
 
-- set wildignore=*.o,*.a,__pycache__
-- set listchars=space:_,tab:>~
-- set formatoptions=njt

vim.opt.wildignore = {'*.o','*.a','__pycache__'}
vim.opt.listchars = {space ='_', tab='>~'}
vim.opt.formatoptions = {n = true, j = true, t = true}

vim.opt.shortmess:append({ I = true})
vim.opt.wildignore:prepend('*.o')
vim.opt.whichwrap:remove({'b','s'})

vim.o.smarttab = false -- :set nosmarttab
print(vim.o.smarttab)
vim.o.listchars = 'space:_,tab:>~' -- :set listchars='space:_,tab:>~'
print(vim.o.listchars)
vim.o.isfname = vim.o.isfname .. ',@-@' -- :set isfname+=@-@

-- Mapping keys
vim.keymap.set('n','<Leader>ex1','<cmd>echo "Example 1"<cr>')
vim.keymap.set({'n','c'},'<Leader>ex2','<cmd>echo "Example 2"<cr>')
vim.keymap.set('n','<Leader>ex4',function() print('Example 4') end)

vim.keymap.set('n','<Leader>pl2', function() require('plugin').action() end)
vim.keymap.set('n','<Leader>pl1',require('plugin').action, {silent = true})

