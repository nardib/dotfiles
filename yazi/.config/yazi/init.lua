function Linemode:size()
	local size = self._file:size()
	return string.format("%s", size and ya.readable_size(size) or "")
end

require("eza-preview"):setup({
  -- Set the tree preview to be default (default: true)
  default_tree = true,

  -- Directory depth level for tree preview (default: 3)
  level = 3,

  -- Follow symlinks when previewing directories (default: false)
  follow_symlinks = false,

  -- Show target file info instead of symlink info (default: false)
  dereference = false,

  -- Show hidden files (default: true) 
  all = true
})

require("telegram-send"):setup({
	command = "telegram-send --file",
	notification = true,
})
