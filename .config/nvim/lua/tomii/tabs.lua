local tl_ok, tl = pcall(require, "tabline")
if not tl_ok then
  print "ERROR: tabline not available. Called from tabs.lua"
  return
end

-- Settings
tl.setup({
  -- Defaults configuration options
  enable = false,
  options = {
    -- If lualine is installed tabline will use separators configured in lualine by default.
    -- These options can be used to override those settings.
    section_separators = {'', ''},
    component_separators = {'', ''},
    max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
    show_tabs_always = true, -- this shows tabs only when there are more than one tab or if the first tab is named
    show_devicons = true, -- this shows devicons in buffer section
    show_bufnr = false, -- this appends [bufnr] to buffer section,
    show_filename_only = true, -- shows base filename only instead of relative path in filename
    modified_icon = "[+] ", -- change the default modified icon
    modified_italic = true, -- set to true by default; this determines whether the filename turns italic if modified
    show_tabs_only = true, -- this shows only tabs instead of tabs + buffers
  }
})
vim.cmd [[
  set guioptions-=e " Use showtabline in gui vim
  set sessionoptions+=tabpages,globals " store tabpages and globals in session
]]
