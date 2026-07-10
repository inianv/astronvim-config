-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- comments
        ["@comment"] = { fg = "#5C6370", italic = true },

        -- constants
        ["@constant"] = { fg = "#56B6C2" },
        ["@constant.builtin"] = { fg = "#D19A66" }, -- true, false, nil, iota
        ["@number"] = { fg = "#D19A66" },
        ["@number.float"] = { fg = "#D19A66" },
        ["@string.escape"] = { fg = "#D19A66" },

        -- functions / calls
        ["@function"] = { fg = "#61AFEF" },
        ["@function.builtin"] = { fg = "#61AFEF" }, -- make, len, cap, append, panic...
        ["@function.call"] = { fg = "#61AFEF" },
        ["@function.method"] = { fg = "#61AFEF" },
        ["@function.method.call"] = { fg = "#61AFEF" },
        ["@constructor"] = { fg = "#61AFEF" },

        -- keywords
        ["@keyword"] = { fg = "#E06C75" },
        ["@keyword.function"] = { fg = "#C678DD" }, -- func
        ["@keyword.return"] = { fg = "#C678DD" },
        ["@keyword.conditional"] = { fg = "#C678DD" }, -- if/else/switch
        ["@keyword.repeat"] = { fg = "#C678DD" }, -- for
        ["@keyword.import"] = { fg = "#E06C75" }, -- import stays red, matching their override
        ["@keyword.storage"] = { fg = "#C678DD" }, -- var/const/type
        ["@label"] = { fg = "#C678DD" },

        -- operators / punctuation
        ["@operator"] = { fg = "#C678DD" },
        ["@keyword.operator"] = { fg = "#C678DD" },
        ["@punctuation.bracket"] = { fg = "#ABB2BF" },
        ["@punctuation.delimiter"] = { fg = "#ABB2BF" },

        -- strings
        ["@string"] = { fg = "#98C379" },

        -- types
        ["@type"] = { fg = "#E5C07B" },
        ["@type.builtin"] = { fg = "#E5C07B" },
        ["@type.definition"] = { fg = "#E5C07B" },

        -- variables
        ["@variable"] = { fg = "#ABB2BF" }, -- theme leaves this unset, falls back to fg
        ["@variable.builtin"] = { fg = "#61AFEF" },
        ["@variable.parameter"] = { fg = "#E06C75" },
        ["@variable.member"] = { fg = "#E06C75" }, -- struct fields (variable.other.member in helix)
        ["@property"] = { fg = "#E06C75" },

        -- module / namespace
        ["@module"] = { fg = "#61AFEF" }, -- package name

        ["@attribute"] = { fg = "#E5C07B" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
