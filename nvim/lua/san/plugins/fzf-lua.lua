return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  cmd = "FzfLua",
  opts = {},
  config = function()
    require("fzf-lua").register_ui_select()

    require("fzf-lua").setup({
      fzf_colors = { true },
      winopts = {
        split = "belowright new",
        preview = {
          default    = "bat",
          horizontal = "right:50%",
          scrollbar  = "false",
        },
      }
    })
  end,
  keys = {
    { "<leader><leader>", "<cmd>FzfLua buffers<cr>", desc = "Find Buffer" },
    { "<leader>fb", "<cmd>FzfLua grep_curbuf<cr>", desc = "Grep Current Buffer" },
    { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
    { "<leader>fh", "<cmd>FzfLua helptags<cr>", desc = "Help Pages" },
    { "gd", "<cmd>FzfLua lsp_definitions<cr>", desc = "Go To Definitions" },
    { "gr", "<cmd>FzfLua lsp_references<cr>", desc = "Go To References" },
    { "<leader>ca", "<cmd>FzfLua lsp_code_actions<cr>", desc = "Code Actions" },
    { "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
  }
}
