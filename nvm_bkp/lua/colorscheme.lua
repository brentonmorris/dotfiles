local colorscheme = 'seoul256'
vim.g.seoul256_background = 234

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not status_ok then
  return
end
