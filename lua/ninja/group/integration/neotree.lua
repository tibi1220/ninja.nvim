local M = {}

function M.get(p)
  -- stylua: ignore
  return {
    NeoTreeNormal             = { fg = p.fg1, bg = p.bg0      },
    NeoTreeNormalNC           = { link = "NeoTreeNormal"      },
    NeoTreeIndentMarker       = { fg = p.bg4                  },

    NeoTreeGitAdded           = { fg = p.dCyan                },
    NeoTreeGitConflict        = { fg = p.dSalmon              },
    NeoTreeGitDeleted         = { fg = p.dSalmon              },
    NeoTreeGitIgnored         = { fg = p.comment              },
    NeoTreeGitModified        = { fg = p.dYellow              },
    NeoTreeGitUntracked       = { fg = p.dMint                },

    NeoTreeRootName           = { fg = p.dYellow, bold = true },
    NeoTreeDirectoryIcon      = { fg = p.dAero                },
    NeoTreeDirectoryName      = { fg = p.dAero                },
    NeoTreeDotfile            = { fg = p.lSalmon              },
    NeoTreeFileIcon           = { fg = p.lCyan                },
    NeoTreeFileName           = { fg = p.lCyan                },
    NeoTreeFileNameOpened     = { fg = p.dCyan                },
  }
end

return M
