local M = {}

function M.get(p)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = p.dYellow },
    AlphaHeader      = { fg = p.dBlue   },
    AlphaHeaderLabel = { fg = p.dYellow },
    AlphaFooter      = { fg = p.dBlue   },
    AlphaButtons     = { fg = p.dWhite  },
  }
end

return M
