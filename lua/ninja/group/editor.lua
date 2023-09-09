local M = {}

function M.get(p)
  -- stylua: ignore
  return {
    ColorColumn  = { bg = p.bg2                                 }, -- used for the columns set with 'colorcolumn'
    Conceal      = { fg = p.bg4                                 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       = { fg = p.bg1, bg = p.fg1                     }, -- character under the cursor
    lCursor      = { fg = p.bg1, bg = p.fg1                     }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     = { fg = p.bg1, bg = p.fg1                     }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = p.bg3                                 }, -- Screen-column at the cursor, when 'cursorcolumn' is seC.
    CursorLine   = { bg = p.bg3                                 }, -- Screen-line at the cursor, when 'cursorline' is seC.  Low-priority if forecrust (ctermfg OR guifg) is not seC.
    Directory    = { fg = p.lBlue                               }, -- directory names (and other special names in listings)
    EndOfBuffer  = { fg = p.fg1                                 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg     = { fg = p.dSalmon, bold = true, italic = true }, -- error messages on the command line
    VertSplit    = { fg = p.bg0                                 }, -- the column separating vertically split windows
    Folded       = { fg = p.fg3, bg = p.bg2                     },
    FoldColumn   = { fg = p.fg3                                 }, -- 'foldcolumn'
    SignColumn   = { fg = p.fg3                                 }, -- column where |signs| are displayed
    SignColumnSB = { fg = p.fg3                                 }, -- column where |signs| are displayed
    Substitute   = { bg = p.dSalmon, fg = p.bg1                 }, -- |:substitute| replacement text highlighting
    LineNr       = { fg = p.fg3                                 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is seC.
    CursorLineNr = { fg = p.dYellow, bold = true                }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
    MatchParen   = { fg = p.dYellow, bg = p.bg2, bold = true    }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      = { fg = p.fg1, bold = true                    }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MoreMsg      = { fg = p.dBlue                               }, -- |more-prompt|
    NonText      = { fg = p.bg4                                 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       = { fg = p.fg1, bg = p.bg1                     }, -- normal text
    NormalNC     = { fg = p.fg1, bg = p.bg1                     }, -- normal text in non-current windows
    NormalSB     = { fg = p.fg1, bg = p.bg1                     }, -- normal text in non-current windows
    NormalFloat  = { fg = p.fg1, bg = p.bg1                     }, -- Normal text in floating windows.
    FloatBorder  = { fg = p.fg3                                 },
    Pmenu        = { fg = p.fg1, bg = p.sel0                    }, -- Popup menu: normal item.
    PmenuSel     = { bg = p.sel1, bold = true                   }, -- Popup menu: selected item.
    PmenuSbar    = { fg = p.fg1, bg = p.sel0                    }, -- Popup menu: scrollbar.
    PmenuThumb   = { bg = p.sel1                                }, -- Popup menu: Thumb of the scrollbar.
    Question     = { fg = p.dBlue                               }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { fg = p.bg3                                 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       = { fg = p.fg1, bg = p.sel1                    }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand ouC.
    IncSearch    = { fg = p.bg1, bg = p.lAqua                   }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch    = { fg = p.bg1, bg = p.lAqua                   }, -- 'cursearch' highlighting: highlights the current search you're on differently
    SpecialKey   = { fg = p.bg4                                 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
    SpellBad     = { sp = p.dSalmon, undercurl = true           }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     = { sp = p.dYellow, undercurl = true           }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   = { sp = p.dBlue, undercurl = true             }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    = { sp = p.lAqua, undercurl = true             }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   = { fg = p.fg2, bg = p.bg0                     }, -- status line of current window
    StatusLineNC = { fg = p.fg3, bg = p.bg0                     }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      = { fg = p.fg2, bg = p.bg2                     }, -- tab pages line, not active tab page label
    TabLineFill  = { bg = p.bg0                                 }, -- tab pages line, where there are no labels
    TabLineSel   = { fg = p.bg1, bg = p.fg3                     }, -- tab pages line, active tab page label
    Title        = { fg = p.dBlue, bold = true                  }, -- titles for output from ":set all", ":autocmd" etC.
    Visual       = { bg = p.sel0, bold = true                   }, -- Visual mode selection
    VisualNOS    = { bg = p.sel0, bold = true                   }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   = { fg = p.dYellow                             }, -- warning messages
    Whitespace   = { fg = p.bg3                                 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     = { fg = p.fg1, bg = p.sel0                    }, -- current match in 'wildmenu' completion
    WinBar       = { fg = p.fg3, bold = true                    }, -- Window bar of current window.
    WinBarNC     = { fg = p.fg3, bold = true                    }, -- Window bar of not-current windows.
  }
end

return M
