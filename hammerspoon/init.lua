-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
--   hs.alert.show("Hello World!")
-- end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "j", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "k", function()
  -- hs.alert.show(hs.application.frontmostApplication():title() .. " Center", show_window_notification_duration)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = 1440
  f.h = 900
  f.x = 10
  f.y = 100

  hs.notify.new({title="Hammerspoon", informativeText="max.x:" .. max.x .. ", max.y:" .. max.y .. ", f.x:" .. f.x .. ", f.y:" .. f.y .. "."}):send()

  win:setFrame(f)
end)
