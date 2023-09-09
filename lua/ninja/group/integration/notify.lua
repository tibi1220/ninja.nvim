local M = {}

function M.get(p)
  -- stylua: ignore
  return {
    NotifyBackground  = { bg = p.bg0     },

    NotifyERRORBorder = { fg = p.lSalmon },
    NotifyERRORIcon   = { fg = p.dSalmon },
    NotifyERRORTitle  = { fg = p.dSalmon },
    NotifyWARNBorder  = { fg = p.lYellow },
    NotifyWARNIcon    = { fg = p.dYellow },
    NotifyWARNTitle   = { fg = p.DYellow },
    NotifyINFOBorder  = { fg = p.dLime   },
    NotifyINFOIcon    = { fg = p.lAqua   },
    NotifyINFOTitle   = { fg = p.lAqua   },
    NotifyDEBUGBorder = { fg = p.lBlue   },
    NotifyDEBUGIcon   = { fg = p.dBlue   },
    NotifyDEBUGTitle  = { fg = p.dBlue   },
    NotifyTRACEBorder = { fg = p.lPurple },
    NotifyTRACEIcon   = { fg = p.dPurple },
    NotifyTRACETitle  = { fg = p.dPurple },
  }
end

return M
