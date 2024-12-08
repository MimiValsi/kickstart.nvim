return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',

  opts = {
    ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'go', 'zig' },

    ignore_install = { 'text' },

    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  },
}
