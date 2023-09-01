local colorscheme = "tokyonight-night"

-- tell vim to use the color scheme, error handling
local okay, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not okay then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
