return {
  "saghen/blink.cmp",
  -- optional: provides snippets for the snippet source
  -- dependencies = "rafamadriz/friendly-snippets",
  version = "*",
  opts = {
    completion = { 
      menu = {
        auto_show = true,

        draw = {
          columns = {
            { "kind_icon", "label", "label_description", gap = 1 },
            { "kind" }
          },
        },
      },

      documentation = { auto_show = true, auto_show_delay_ms = 250 },
    },

    keymap = { preset = "default" },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono"
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
      -- cmdline = {},
    },

    -- fuzzy = { implementation = "lua" }
  },
  opts_extend = { "sources.default" }
}
