return {
  {
    "itsamayo/microscope.nvim",
    config = function()
      require("microscope.module").setup {
        keymaps = {
          fold = "<leader>ze",
          grep = "<leader>fg",
        },
      }
    end,
    lazy = false,
  },
}
