---@type LazySpec
return {
  -- treesitter parsers
  {
    "AstroNvim/astrocore",
    opts = {
      treesitter = {
        ensure_installed = { "go", "gomod", "gosum", "gowork" },
      },
    },
  },

  -- install gopls via mason
  {
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "gopls" })
    end,
  },

  -- install debug/utility tools via mason (no goimports)
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(
        opts.ensure_installed,
        { "delve", "gomodifytags", "gotests", "impl", "iferr" }
        -- note: no goimports here
      )
    end,
  },

  -- gopls configuration
  {
    "AstroNvim/astrolsp",
    opts = {
      config = {
        gopls = {
          settings = {
            gopls = {
              gofumpt = true, -- gopls handles formatting, no need for goimports
              analyses = {
                ST1003 = true,
                fillreturns = true,
                nilness = true,
                nonewvars = true,
                shadow = false,
                ST1000 = false,
                undeclaredname = true,
                unreachable = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
              },
              codelenses = {
                generate = true,
                regenerate_cgo = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              completeUnimported = true,
              staticcheck = true,
              usePlaceholders = true,
              semanticTokens = true,
              matcher = "Fuzzy",
              symbolMatcher = "fuzzy",
            },
          },
        },
      },
    },
  },
}
