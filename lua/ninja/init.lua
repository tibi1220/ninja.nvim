local util = require "ninja.util"
local config = require "ninja.util.config"
local compile = require("ninja.lib.compiler").compile

local M = {}

local did_setup = false

function M.setup(cfg)
  did_setup = true

  -- $CONFIG_HOME/nvim/ninja folder should be present
  if vim.fn.isdirectory(config.compile_path) == 0 then
    vim.fn.mkdir(config.options.compile_path, "p")
  end

  -- Only change config if user provided input
  if cfg ~= nil then
    config.set_options(cfg.options or {})
    config.set_theme(cfg.style or "default")
    config.set_debugging(cfg.debug or false)
  end

  -- Check if cache file exists
  local output = config.get_info()
  local cached_path = util.join_paths(output.dir, "cache")
  local file = io.open(cached_path)
  local cached = nil

  if file then
    cached = file:read()
    file:close()
  end

  -- Create hash
  local git_path = util.join_paths(debug.getinfo(1).source:sub(2, -23), ".git")
  local git = vim.fn.getftime(git_path)
  local hash = require "ninja.lib.hash"(config.options) .. (git == -1 and git_path or git)

  -- If current and loaded hash do not match, or debugging is on, recompile
  if cached ~= hash or config.debug then
    compile(config.debug)
    file = io.open(cached_path, "wb")
    if file then
      file:write(hash)
      file:close()
    end
  end
end

function M.load()
  if not did_setup then
    M.setup()
  end

  local output = config.get_info()

  local file = loadfile(output.file)

  if not file then
    compile(config.debug)
    file = assert(loadfile(output.file), "error")
  end

  file()
  return true
end

vim.api.nvim_create_user_command("NinjaCompile", function()
  compile(config.debug)
  vim.notify("Ninja (info): compiled cache", vim.log.levels.INFO)
end, {})

return M
