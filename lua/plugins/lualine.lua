return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")
    lualine.setup({

      sections = {
        lualine_a = {
          {
            "mode",
            icons_enabled = true,
            separator = {
              left = "",
              right = "",
              -- right = ""
            },
            fmt = function()
              local mode_map = {
                n = "(ᴗ_ ᴗ。) i sleep",
                nt = "(ᴗ_ ᴗ。) i sleep",
                i = "(•̀ - •́ ) real shitt",
                R = "(づ｡◕‿‿◕｡)づ",
                v = "(╯°□°）╯︵┻━┻",
                V = "(╯°□°）╯︵┻━┻",
                no = "Σ(°△°ꪱꪱꪱ) LETSS GOO",
                ["\22"] = "(╯°□°）╯︵┻━┻",
                t = "(⌐■_■) hecker",
                ["!"] = "Σ(°△°ꪱꪱꪱ) LETSS GOO",
                c = "Σ(°△°ꪱꪱꪱ) LETSS GOO",
                s = "(⊙ _ ⊙ ) DAMN",
              }
              return mode_map[vim.api.nvim_get_mode().mode]
                or vim.api.nvim_get_mode().mode
            end,
          },
        },
      },
    })
  end,
}
