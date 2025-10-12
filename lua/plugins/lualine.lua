return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- 可选图标支持
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",   -- 自动适配当前 colorscheme（如 gruvbox）
          icons_enabled = true,
        },
      })
    end,
  },
}
