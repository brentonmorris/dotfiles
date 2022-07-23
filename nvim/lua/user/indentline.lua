local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  return
end

vim.opt.list = true

indent_blankline.setup {
  char = "▏",
  show_end_of_line = true,
  use_treesitter = true,
  show_current_context = true,
  show_trailing_blankline_indent = false,

  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = {
    "help",
    "packer",
    "NvimTree",
  },
}
