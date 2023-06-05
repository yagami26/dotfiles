require ("plugins")
require ("settings")


local themeStatus,kanagawa = pcall(require, "kanagawa")
if themeStatus then
    vim.cmd("colorscheme kanagawa")
else
    return
end    
