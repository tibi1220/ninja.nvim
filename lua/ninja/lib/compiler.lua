-- Reference: https://github.com/EdenEast/nightfox.nvim/blob/main/lua/nightfox/lib/vim/compiler.lua

local config = require "ninja.util.config"
local fmt = string.format

local M = {}

local function inspect(t)
  local list = {}
  for k, v in pairs(t) do
    local q = type(v) == "string" and [["]] or ""
    table.insert(list, fmt([[%s = %s%s%s]], k, q, v, q))
  end

  table.sort(list)
  return fmt([[{ %s }]], table.concat(list, ", "))
end

function M.compile(debug)
  local style = config.style
  local background = "dark"
  local palette = require "ninja.palette"(style)

  debug = debug or false

  local lines = {
    fmt(
      [[return string.dump(function()
local h = vim.api.nvim_set_hl
if vim.g.colors_name then vim.cmd("hi clear") end
vim.o.termguicolors = true
vim.g.colors_name = "ninja"
vim.o.background = "%s"
]],
      background
    ),
  }

  -- Configure terminal
  if config.options.terminal_colors then
    local terminal = require("ninja.group.terminal").get(palette)
    for k, v in pairs(terminal) do
      table.insert(lines, fmt([[vim.g.%s = "%s"]], k, v))
    end
  end

  -- Configure editor
  local editor = require("ninja.group.editor").get(palette)
  for k, v in pairs(editor) do
    table.insert(lines, fmt([[h(0, "%s", %s)]], k, inspect(v)))
  end

  -- Configure syntax
  local syntax = require("ninja.group.syntax").get(palette)
  for k, v in pairs(syntax) do
    table.insert(lines, fmt([[h(0, "%s", %s)]], k, inspect(v)))
  end

  -- Configure spec
  local modules = config.options.modules
  for name, enabled in pairs(modules) do
    if enabled == true then
      local module = require("ninja.group.integration." .. name).get(palette)
      for k, v in pairs(module) do
        table.insert(lines, fmt([[h(0, "%s", %s)]], k, inspect(v)))
      end
    end
  end

  -- Finish function
  table.insert(lines, "end)")

  local output = config.get_info()

  if debug then
    local debugger = io.open(output.file .. ".lua", "wb")

    if debugger then
      debugger:write(table.concat(lines, "\n"))
      debugger:close()
    end
  end

  local file = io.open(output.file, "wb")
  local f = load(table.concat(lines, "\n"), "=")

  -- Return false if error
  if not f or not file then
    return false
  end

  file:write(f())
  file:close()

  -- Return true otherwise
  return true
end

return M
