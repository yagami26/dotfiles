return {
    "tiagovla/tokyodark.nvim",
    opts = {
        gamma = 1.0
    },
    config = function(_, opts)
        require("tokyodark").setup(opts) -- calling setup is optional
        vim.cmd [[colorscheme tokyodark]]
    end,
}
