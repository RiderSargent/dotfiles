-- Clear the console
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "-", function()
  hs.console.clearConsole()
end)

-- Show screen and window info
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "0", function()
  local focusedWindow = hs.window.focusedWindow()
  local focusedWindowFrame = focusedWindow:frame()
  local screen = focusedWindow:screen()
  local screenFrame = screen:frame()

  local log = hs.logger.new('windowing','debug')

  local formatString = "\nscreenFrame.x: %8s\n"
                       .. "screenFrame.y: %8s\n"
                       .. "screenFrame.w: %8s\n"
                       .. "screenFrame.h: %8s\n"
                       .. "\n"
                       .. "focusedWindowFrame.x: %8s\n"
                       .. "focusedWindowFrame.y: %8s\n"
                       .. "focusedWindowFrame.w: %8s\n"
                       .. "focusedWindowFrame.h: %8s\n"

  log.df(
    formatString,
    screenFrame.x,
    screenFrame.y,
    screenFrame.w,
    screenFrame.h,
    focusedWindowFrame.x,
    focusedWindowFrame.y,
    focusedWindowFrame.w,
    focusedWindowFrame.h
  )
end)

-- Window to full screen
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "1", function()
  local focusedWindow = hs.window.focusedWindow()
  local focusedWindowFrame = focusedWindow:frame()
  local screen = focusedWindow:screen()
  local screenFrame = screen:frame()

  focusedWindowFrame.x = screenFrame.x
  focusedWindowFrame.y = screenFrame.y
  focusedWindowFrame.w = screenFrame.w
  focusedWindowFrame.h = screenFrame.h
  focusedWindow:setFrame(focusedWindowFrame)
end)

-- Window to centered 1440 by 900
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "2", function()
  local focusedWindow = hs.window.focusedWindow()
  local focusedWindowFrame = focusedWindow:frame()
  local screen = focusedWindow:screen()
  local screenFrame = screen:frame()

  local width = 1440
  local height = 900

  focusedWindowFrame.x = screenFrame.x + (screenFrame.w / 2 - 720)
  focusedWindowFrame.y = screenFrame.y + (screenFrame.h / 2 - 488)
  focusedWindowFrame.w = width
  focusedWindowFrame.h = height
  focusedWindow:setFrame(focusedWindowFrame)
end)

-- Window to centered 1280 by 1024
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "4", function()
  local focusedWindow = hs.window.focusedWindow()
  local focusedWindowFrame = focusedWindow:frame()
  local screen = focusedWindow:screen()
  local screenFrame = screen:frame()

  local width = 1280

  focusedWindowFrame.x = screenFrame.x + (screenFrame.w / 2 - 640)
  focusedWindowFrame.y = screenFrame.y + 10
  focusedWindowFrame.w = width
  focusedWindowFrame.h = screenFrame.h - 20

  focusedWindow:setFrame(focusedWindowFrame)
end)

-- Window to left half of screen
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "h", function()
  local focusedWindow = hs.window.focusedWindow()
  local focusedWindowFrame = focusedWindow:frame()
  local screen = focusedWindow:screen()
  local screenFrame = screen:frame()

  focusedWindowFrame.x = screenFrame.x
  focusedWindowFrame.y = screenFrame.y
  focusedWindowFrame.w = screenFrame.w / 2
  focusedWindowFrame.h = screenFrame.h
  focusedWindow:setFrame(focusedWindowFrame)
end)

-- Window to top half of screen
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "k", function()
  local focusedWindow = hs.window.focusedWindow()
  local focusedWindowFrame = focusedWindow:frame()
  local screen = focusedWindow:screen()
  local screenFrame = screen:frame()

  focusedWindowFrame.x = screenFrame.x
  focusedWindowFrame.y = screenFrame.y
  focusedWindowFrame.w = screenFrame.w
  focusedWindowFrame.h = screenFrame.h / 2
  focusedWindow:setFrame(focusedWindowFrame)
end)

-- Window to bottom half of screen
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "j", function()
  local focusedWindow = hs.window.focusedWindow()
  local focusedWindowFrame = focusedWindow:frame()
  local screen = focusedWindow:screen()
  local screenFrame = screen:frame()

  focusedWindowFrame.x = screenFrame.x
  focusedWindowFrame.y = screenFrame.y + (screenFrame.h / 2)
  focusedWindowFrame.w = screenFrame.w
  focusedWindowFrame.h = screenFrame.h / 2
  focusedWindow:setFrame(focusedWindowFrame)
end)

-- Window to right half of screen
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "l", function()
  local focusedWindow = hs.window.focusedWindow()
  local focusedWindowFrame = focusedWindow:frame()
  local screen = focusedWindow:screen()
  local screenFrame = screen:frame()

  focusedWindowFrame.x = screenFrame.x + (screenFrame.w / 2)
  focusedWindowFrame.y = screenFrame.y
  focusedWindowFrame.w = screenFrame.w / 2
  focusedWindowFrame.h = screenFrame.h
  focusedWindow:setFrame(focusedWindowFrame)
end)

-- Reload Config Automatically
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

