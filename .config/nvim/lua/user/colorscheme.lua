vim.g.tokyonight_transparent_sidebar = "true"
vim.g.tokyonight_transparent = "true"

vim.opt.background = "dark"
-- local colorscheme = "tokyonight-night"
local colorscheme = "carbonfox"








local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
