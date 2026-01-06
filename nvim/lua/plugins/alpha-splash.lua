return {
	"goolord/alpha-nvim",
	requires = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[ /$$      /$$ /$$ /$$ /$$          ]],
            [[| $$  /$ | $$|__/| $$| $$          ]],
            [[| $$ /$$$| $$ /$$| $$| $$ /$$   /$$]],
            [[| $$/$$ $$ $$| $$| $$| $$| $$  | $$]],
            [[| $$$$_  $$$$| $$| $$| $$| $$  | $$]],
            [[| $$$/ \  $$$| $$| $$| $$| $$  | $$]],
            [[| $$/   \  $$| $$| $$| $$|  $$$$$$$]],
            [[|__/     \__/|__/|__/|__/ \____  $$]],
            [[                          /$$  | $$]],
            [[                         |  $$$$$$/]],
            [[                          \______/ ]],
            [[ /$$    /$$ /$$                    ]],
            [[| $$   | $$|__/                    ]],
            [[| $$   | $$ /$$ /$$$$$$/$$$$       ]],
            [[|  $$ / $$/| $$| $$_  $$_  $$      ]],
            [[ \  $$ $$/ | $$| $$ \ $$ \ $$      ]],
            [[  \  $$$/  | $$| $$ | $$ | $$      ]],
            [[   \  $/   | $$| $$ | $$ | $$      ]],
            [[    \_/    |__/|__/ |__/ |__/      ]],
        }


	dashboard.section.buttons.val = {
        dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("n", "  New File", ":ene <BAR> startinsert<CR>"),
        dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("q", "  Quit NVIM", ":qa<CR>"   )
        }
    alpha.setup(dashboard.config)
    end,
}
