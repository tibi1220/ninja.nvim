local M = {}

function M.get(p)
  -- stylua: ignore
  return {
    TSRainbowRed    = { fg = p.dSalmon },
    TSRainbowYellow = { fg = p.dYellow },
    TSRainbowBlue   = { fg = p.dBlue   },
    TSRainbowOrange = { fg = p.dOrange },
    TSRainbowGreen  = { fg = p.dAqua   },
    TSRainbowViolet = { fg = p.dPurple },
    TSRainbowCyan   = { fg = p.dCyan   },
  }
end

return M
