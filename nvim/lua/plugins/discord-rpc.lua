local private_mode = true
return {
  'andweeb/presence.nvim',
  opts = {
    editing_text = private_mode and "Editing" or "Editing %s",
    file_explorer_text = private_mode and "Browsing" or "Browsing %s",
    reading_text = private_mode and "Reading" or "Reading %s",
    workspace_text = private_mode and "Workspace hidden" or "Working on %s",
  },
}
