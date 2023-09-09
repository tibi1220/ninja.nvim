local util = require "ninja.util"

local M = {
  style = "default",
  debug = false,
}

local defaults = {
  compile_path = util.join_paths(util.cache_home, "ninja"),
  compile_suffix = "-compiled",

  terminal_colors = true,
  transparent = false,

  -- TODO: add more options
  styles = {},

  -- TODO: add more modules
  modules = {
    alpha = true,
    gitsigns = true,
    illuminate = true,
    indent_blankline = true,
    neotree = true,
    notify = true,
    telescope = true,
    treesitter = true,
    ts_rainbow2 = true,
  },

  languages = {
    tex = true,
  },

  overrides = {
    palette = {},
    terminal = {},
    hl = {},
  },
}

M.options = vim.deepcopy(defaults)

function M.set_theme(name)
  M.style = name
end

function M.set_debugging(value)
  M.debug = value
end

function M.set_options(opts)
  opts = opts or {}
  M.options = vim.tbl_deep_extend("force", M.options, opts)
end

function M.reset_options()
  M.options = vim.deepcopy(defaults)
end

function M.get_hash()
  local hash = require "ninja.lib.hash"(M.options)
  return hash and hash or 0
end

function M.get_info()
  return {
    dir = M.options.compile_path,
    file = util.join_paths(M.options.compile_path, "ninja" .. M.options.compile_suffix),
  }
end

return M
