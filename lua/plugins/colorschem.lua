return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- 优先加载，避免闪烁
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,   -- 同步终端颜色
        contrast = "soft",        -- 也可选 "hard", "medium"
        transparent_mode = false, -- 若你想背景透明可改为 true
      })

      -- 启用 colorscheme
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
