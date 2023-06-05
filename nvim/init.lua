require ("plugins")
require ("settings")
require ("configs.mason-config")

local themeStatus,kanagawa = pcall(require, "kanagawa")
if themeStatus then
    vim.cmd("colorscheme kanagawa")
else
    return
end    
