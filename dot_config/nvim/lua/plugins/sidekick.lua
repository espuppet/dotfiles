return {
  {
    "folke/sidekick.nvim",
    opts = {
      cli = {
        win = {
          keys = {
            stopinsert = { "<c-\\>", "stopinsert", mode = "t", desc = "enter normal mode" },
          },
        },
      },
    },
  },
}
