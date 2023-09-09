local M = {}

function M.get(p)
  -- stylua: ignore
  return {
    GitSignsAdd    = { fg = p.dAqua   },
    GitSignsChange = { fg = p.dYellow },
    GitSignsDelete = { fg = p.dSalmon },
  }
end

return M
