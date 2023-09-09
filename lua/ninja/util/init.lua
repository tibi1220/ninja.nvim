local M = {}

M.is_windows = jit and jit.os == "Windows" or package.config:sub(1, 1) == "\\"
M.path_sep = M.is_windows and "\\" or "/"

M.is_nvim = vim.fn.has "nvim" == 1
M.use_nvim_api = M.is_nvim and vim.fn.has "nvim-0.7" == 1

M.tmp_dir = M.is_windows and os.getenv "TMP" or "/tmp"

function M.join_paths(...)
  return table.concat({ ... }, M.path_sep)
end

function M.exists(path)
  local f = io.open(path, "r")

  if f == nil then
    return false
  end

  io.close(f)
  return true
end

local function get_cache_home()
  if M.is_windows then
    return M.join_paths(vim.fn.expand "%localappdata%", "Temp", "vim")
  end

  local xdg = os.getenv "XDG_CACHE_HOME"
  local root = xdg or vim.fn.expand "$HOME/.cache"
  return M.join_paths(root, "vim")
end

M.cache_home = M.is_nvim and vim.fn.stdpath "cache" or get_cache_home()

return M
