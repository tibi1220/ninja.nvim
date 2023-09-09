local M = {}

function M.get(p)
  -- stylua: ignore
  return {
    TelescopeBorder         = { link = "FloatBorder" },
    TelescopeSelectionCaret = { fg = p.dAero         },
    TelescopeSelection      = { link = "CursorLine"  },
    TelescopeMatching       = { link = "Search"      },
  }
end

return M
