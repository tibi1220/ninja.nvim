local M = {}

function M.get(p)
  -- stylua: ignore
  return {
    IlluminatedWordText  = { bg = p.sel0, underline = true },
    IlluminatedWordRead  = { link = "IlluminatedWordText"  },
    IlluminatedWordWrite = { link = "IlluminatedWordText"  },
  }
end

return M
