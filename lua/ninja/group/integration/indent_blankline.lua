local M = {}

function M.get(p)
  -- stylua: ignore
  return {
    IndentBlanklineChar               = { fg = p.bg4                   },
    IndentBlanklineSpaceChar          = { link = "IndentBlanklineChar" },
    IndentBlanklineSpaceCharBlankline = { link = "IndentBlanklineChar" },
    IndentBlanklineContextChar        = { link = "IndentBlanklineChar" },
    IndentBlanklineContextSpaceChar   = { link = "IndentBlanklineChar" },

    IndentBlanklineIndent1            = { fg = p.dSalmon               },
    IndentBlanklineIndent2            = { fg = p.dYellow               },
    IndentBlanklineIndent3            = { fg = p.dAqua                 },
    IndentBlanklineIndent4            = { fg = p.dBlue                 },
    IndentBlanklineIndent5            = { fg = p.dCyan                 },
    IndentBlanklineIndent6            = { fg = p.dPurple               },

    IndentBlanklineIndent7            = { bg = p.bg1, fg = p.bg4       },
    IndentBlanklineIndent8            = { bg = p.bg0, fg = p.bg4       },
  }
end

return M
