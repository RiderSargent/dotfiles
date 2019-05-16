--------------------------------------------------------------------------------
-- Global settings                                                            --
--------------------------------------------------------------------------------
logger = hs.logger.new('RWS','debug')
hyperkey = {"cmd", "alt", "ctrl", "shift"}
hs.window.animationDuration = 0

hs.grid.setGrid('12x12') -- allows us to place on quarters, thirds and halves
hs.grid.setMargins({10,10})

local chain = nil
local lastSeenChain = nil
local lastSeenWindow = nil

local grid = {
  topHalf = '0,0 12x6',
  topThird = '0,0 12x4',
  topTwoThirds = '0,0 12x8',
  rightHalf = '6,0 6x12',
  rightThird = '8,0 4x12',
  rightTwoThirds = '4,0 8x12',
  bottomHalf = '0,6 12x6',
  bottomThird = '0,8 12x4',
  bottomTwoThirds = '0,4 12x8',
  leftHalf = '0,0 6x12',
  leftThird = '0,0 4x12',
  leftTwoThirds = '0,0 8x12',
  topLeft = '0,0 6x6',
  topRight = '6,0 6x6',
  bottomRight = '6,6 6x6',
  bottomLeft = '0,6 6x6',
  fullScreen = '0,0 12x12',
  centeredBig = '2,0 8x12',
  centeredSmall = '2,2 8x8',
}


--------------------------------------------------------------------------------
-- Grid Layout                                                                --
--------------------------------------------------------------------------------
-- Shamelessly stolen from wincent:
-- https://github.com/wincent/wincent/blob/master/roles/dotfiles/files/.hammerspoon/init.lua

-- Chain the specified movement commands.
--
-- This is like the "chain" feature in Slate, but with a couple of enhancements:
--
--  - Chains always start on the screen the window is currently on.
--  - A chain will be reset after 2 seconds of inactivity, or on switching from
--    one chain to another, or on switching from one app to another, or from one
--    window to another.
--
chain = (function(movements)
  local chainResetInterval = 2 -- seconds
  local cycleLength = #movements
  local sequenceNumber = 1

  return function()
    local win = hs.window.frontmostWindow()
    local id = win:id()
    local now = hs.timer.secondsSinceEpoch()
    local screen = win:screen()

    if
      lastSeenChain ~= movements or
      lastSeenAt < now - chainResetInterval or
      lastSeenWindow ~= id
    then
      sequenceNumber = 1
      lastSeenChain = movements
    elseif (sequenceNumber == 1) then
      -- At end of chain, restart chain on next screen.
      screen = screen:next()
    end
    lastSeenAt = now
    lastSeenWindow = id

    hs.grid.set(win, movements[sequenceNumber], screen)
    sequenceNumber = sequenceNumber % cycleLength + 1
  end
end)


--------------------------------------------------------------------------------
-- Hotkey settings                                                            --
--------------------------------------------------------------------------------

-- Clear the console
hs.hotkey.bind(hyperkey, "-", function()
  hs.console.clearConsole()
end)

hs.hotkey.bind(hyperkey, 'n', (function()
  hs.toggleConsole()
end))

hs.hotkey.bind(hyperkey, 's', (function()
  hs.grid.show()
end))

-- Show screen and window info
hs.hotkey.bind(hyperkey, "0", function()
  local focusedWindow = hs.window.focusedWindow()
  local focusedWindowFrame = focusedWindow:frame()
  local screen = focusedWindow:screen()
  local screenFrame = screen:frame()

  local formatString = "\nscreenFrame.x: %8s\n"
                       .. "screenFrame.y: %8s\n"
                       .. "screenFrame.w: %8s\n"
                       .. "screenFrame.h: %8s\n"
                       .. "\n"
                       .. "focusedWindowFrame.x: %8s\n"
                       .. "focusedWindowFrame.y: %8s\n"
                       .. "focusedWindowFrame.w: %8s\n"
                       .. "focusedWindowFrame.h: %8s\n"

  logger.df(
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

-- -- Window to full screen
-- hs.hotkey.bind(hyperkey, "1", function()
--   hs.window.focusedWindow():maximize()
-- end)

-- Cycle window between full screen, centered big and centered small
hs.hotkey.bind(hyperkey, '1', chain({
  grid.fullScreen,
  grid.centeredBig,
  grid.centeredSmall,
}))

-- Window to centered 1440 by 900
hs.hotkey.bind(hyperkey, "2", function()
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
hs.hotkey.bind(hyperkey, "4", function()
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

-- Center Window
hs.hotkey.bind(hyperkey, "space", function()
  hs.window.focusedWindow():centerOnScreen()
end)


hs.hotkey.bind(hyperkey, 'k', chain({
  grid.topHalf,
  grid.topThird,
  grid.topTwoThirds,
}))

hs.hotkey.bind(hyperkey, 'l', chain({
  grid.rightHalf,
  grid.rightThird,
  grid.rightTwoThirds,
}))

hs.hotkey.bind(hyperkey, 'j', chain({
  grid.bottomHalf,
  grid.bottomThird,
  grid.bottomTwoThirds,
}))

hs.hotkey.bind(hyperkey, 'h', chain({
  grid.leftHalf,
  grid.leftThird,
  grid.leftTwoThirds,
}))

hs.hotkey.bind(hyperkey, 'u', chain({
  grid.fullScreen,
  grid.centeredBig,
  grid.centeredSmall,
}))

hs.hotkey.bind(hyperkey, 'i', chain({
  grid.topLeft,
  grid.topRight,
  grid.bottomRight,
  grid.bottomLeft,
}))


--------------------------------------------------------------------------------
-- Reload Config Automatically                                                --
--------------------------------------------------------------------------------
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
logger.d("Config loaded")

