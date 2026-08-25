-- vim surround
return {
"echasnovski/mini.surround",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("mini.surround").setup({
      mappings = {
        add = "sa",
        delete = "sd",
        replace = "sr",
      },
    })
  end,
}
