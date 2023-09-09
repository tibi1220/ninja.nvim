local M = {}

function M.get(p)
  return {
    terminal_color_0 = p.ansiBlack,
    terminal_color_8 = p.ansiBrightBlack,

    terminal_color_1 = p.anisRed,
    terminal_color_9 = p.anisBrightRed,

    terminal_color_2 = p.ansiGreen,
    terminal_color_10 = p.ansiBrightGreen,

    terminal_color_3 = p.ansiYellow,
    terminal_color_11 = p.ansiBrightYellow,

    terminal_color_4 = p.ansiBlue,
    terminal_color_12 = p.ansiBrightBlue,

    terminal_color_5 = p.ansiMagenta,
    terminal_color_13 = p.ansiBrightMagenta,

    terminal_color_6 = p.ansiCyan,
    terminal_color_14 = p.anisBrightCyan,

    terminal_color_7 = p.ansiWhite,
    terminal_color_15 = p.anisBrightWhite,
  }
end

return M
