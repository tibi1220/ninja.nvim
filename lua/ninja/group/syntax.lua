local M = {}

function M.get(p)
  -- stylua: ignore
  return {
    Comment        = { fg = p.gray, italic = true    }, -- any comment
    Constant       = { fg = p.lOrange                }, -- any constant
    String         = { fg = p.green, italic = false  }, -- a string constant: "this is a string"
    Character      = { fg = p.green                  }, -- a character constant: 'c', '\n'
    Number         = { fg = p.lOrange                }, -- a number constant: 234, 0xff
    Float          = { fg = p.lOrange                }, -- a floating point constant: 2.3e10
    Boolean        = { fg = p.lOrange                }, -- a boolean constant: TRUE, false

    Identifier     = { fg = p.salmon                 }, -- any variable name
    Function       = { fg = p.blue                   }, -- function name (also: methods for classes)

    Statement      = { fg = p.dPurple                }, -- any statement
    Conditional    = { link = "Statement"            }, -- if, then, else, endif, switch, etc.
    Repeat         = { link = "Statement"            }, -- for, do, while, etc.
    Label          = { link = "Statement"            }, -- case, default, etc.
    Operator       = { fg = p.lCyan                  }, -- "sizeof", "+", "*", etc.
    Keyword        = { link = "Statement"            }, -- any other keyword
    Exception      = { link = "Statement"            }, -- try, catch, throw

    PreProc        = { link = "Statement"            }, -- generic Preprocessor
    Include        = { link = "PreProc"              }, -- preprocessor #include
    Define         = { link = "PreProc"              }, -- preprocessor #define
    Macro          = { link = "PreProc"              }, -- same as Define
    PreCondit      = { link = "PreProc"              }, -- preprocessor #if, #else, #endif, etc.

    Type           = { fg = p.dPurple                }, -- int, long, char, etc.
    StorageClass   = { fg = p.dPurple                }, -- static, register, volatile, etc.
    Structure      = { fg = p.dPurple                }, -- struct, union, enum, etc.
    Typedef        = { fg = p.dPurple                }, -- A typedef

    Special        = { fg = p.sand                  }, -- any special symbol
    SpecialChar    = { link = "Special"              }, -- special character in a constant
    Tag            = { link = "Special"              }, -- you can use CTRL-] on this
    Delimiter      = { link = "Special"              }, -- character that needs attention
    SpecialComment = { link = "Special"              }, -- special things inside a comment
    Debug          = { link = "Special"              }, -- debugging statements

    Underlined     = { underline = true              },
    Bold           = { bold = true                   },
    Italic         = { italic = true                 },
    Todo           = { bg = p.lYellow, fg = p.bg1    },
  }
end

return M
