local M = {
  filters = { dotfiles = true },
  update_focused_file = {
    enable = true, -- 更新文件
    update_cwd = true, -- 更新当前目录
  },
  view = {
    width = 25,
    side = "left",
  },
  renderer = {
    root_folder_label = true, -- 显示根目录名称
    indent_markers = { enable = true },

    -- 自定义图标设置
    icons = {
      webdev_colors = true, -- 启用颜色

      -- 自定义文件夹图标
      glyphs = {
        folder = {
          -- arrow_closed = "", -- 关闭的文件夹箭头
          -- arrow_open = "",   -- 打开的文件夹箭头
          default = " ", -- 默认文件夹
          -- default = " ",      -- 默认文件夹
          open = " ", -- 打开的文件夹
          empty = " ", -- 空文件夹
          -- empty = " ",        -- 空文件夹
          empty_open = " ", -- 打开的空文件夹
          symlink = " ", -- 符号链接文件夹
          symlink_open = " ", -- 打开的符号链接文件夹
        },

        -- 自定义文件图标
        default = "󰷆", -- 默认文件
        symlink = "", -- 符号链接
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
}

return M
