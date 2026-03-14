-- trim white space on save
return {
    "cappyzawa/trim.nvim",
    config = function()
        require("trim").setup({})
    end,
}
