return {
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      },
      opts = {
        source_selector = { -- 控制显示文件树顶部样式
          winbar = true,
          statusline = true
        },
        filesystem = {
          filtered_items = {
            hide_dotfiles = false, -- 控制是否显示以.开头的文件夹和文件
            hide_hidden = false, -- 控制是否显示隐藏文件，win独有
          },
          window = {
            mappings = { -- 映射快捷键到操作
              ["<F5>"] = "refresh",
              ["o"] = "open",
            }
          },
        },
      },
      keys = {
          { "<c-n>", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
      },
      close_if_last_window = false,
      -- config = function ()
      --       require("neo-tree")
      -- end
    }
}
