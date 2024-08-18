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
      shading_factor = 2, -- Darker background for better contrast
      start_in_insert = true,
      persist_size = true,
      direction = "float", -- Floating terminal for a modern look
      float_opts = {
        border = "curved", -- Curved border for a sleek appearance
        width = 120, -- Customize width of the floating terminal
        height = 30, -- Customize height of the floating terminal
        winblend = 10, -- Transparency for the floating terminal
        highlights = {
          border = "Normal", -- Border color
          background = "Normal", -- Background color
        },
      },
      border = "curved",
      title = "Terminal",
      title_pos = "center",
      autochdir = true, -- Disable autochdir since we're manually setting the directory

      on_open = function(term)
        -- Manually change the directory to the current working directory
        vim.api.nvim_command("startinsert")
        vim.api.nvim_command("lcd " .. vim.fn.getcwd())
      end,
    })
  end,
}
