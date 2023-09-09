local function get_palette(name)
  local palette = nil

  -- Options come here
  if name == "default" then
    palette = require "ninja.palette.default"
  -- Use default if not specified
  else
    palette = require "ninja.palette.default"
  end

  return palette
end

return get_palette
