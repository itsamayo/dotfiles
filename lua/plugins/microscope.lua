return {
  {
    "itsamayo/microscope.nvim",
    config = function()
      require("microscope.module").setup {
        keymaps = {
          fold = "<leader>fg",
        },
      }
    end,
    lazy = false,
  },
}
