return {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function()
    local surround = require("nvim-surround")
    surround.setup({})
    local v_chars = {"(", ")", "[", "]", "{", "}", "'", "\""}
    for _, char in ipairs(v_chars) do
      vim.keymap.set("v", char, "<Plug>(nvim-surround-visual)"..char)
    end
  end,
}

