return {
  "keaising/im-select.nvim",
  config = function()
    require("im_select").setup({
      -- 你的 im-select.exe 路径，如果它已经加入 PATH，可以省略
      default_im_select = "1033", -- 英文输入法（美式键盘）
      default_command = "C:\\Users\\heyunzhou\\AppData\\Local\\nvim\\lua\\plugins\\im-select.exe",
      set_default_events = { "InsertLeave" },
      set_previous_events = { "InsertEnter" },
    })
  end,
}