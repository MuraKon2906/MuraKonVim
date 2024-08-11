-- Neorg plugin configuration using lazy.nvim

return {
  "nvim-neorg/neorg",
  lazy = false, -- Load Neorg immediately
  version = "*", -- Pin to the latest stable release
  dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" }, -- Required dependencies
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/notes",
            },
            default_workspace = "notes",
          },
        },
      },
    })

    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
