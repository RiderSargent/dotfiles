# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# Merge panes
atom.commands.add 'atom-workspace', 'custom:merge-panes', ->
  panes = atom.workspace.getCenter().getPanes()
  firstPane = panes.shift()
  for pane in panes
    for tab in pane.getItems()
      pane.moveItemToPane tab, firstPane

atom.commands.add 'atom-text-editor.vim-mode-plus.normal-mode', 'custom:insert-line-above', ->
  editor = atom.workspace.getActiveTextEditor()
  position = editor.getCursorBufferPosition()
  editor.insertNewlineAbove()
  editor.setCursorBufferPosition([position.row + 1, position.column])

atom.commands.add 'atom-text-editor.vim-mode-plus.normal-mode', 'custom:insert-line-below', ->
  editor = atom.workspace.getActiveTextEditor()
  position = editor.getCursorBufferPosition()
  editor.insertNewlineBelow()
  editor.setCursorBufferPosition(position)
