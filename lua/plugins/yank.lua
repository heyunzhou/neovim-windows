return {
  "machakann/vim-highlightedyank",
  event = "TextYankPost",
  init = function()
    -- 高亮持续时间 (毫秒)，设为 0 则禁用
    vim.g.highlightedyank_highlight_duration = 220
  end,
}
