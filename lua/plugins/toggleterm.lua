return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},

  config = function()
    require("toggleterm").setup({

      size = 20,
      open_mapping = [[<c-q>]],
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 1,
      start_in_insert = true,
      persist_size = true,
      direction = "horizontal",
      border = "shadow",
      title_pos = "center",
    })
  end,
}
