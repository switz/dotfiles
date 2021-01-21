-- disable animation duration
hs.window.animationDuration = 0

function left()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

function right()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

function down()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end

function up()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end

function fullScreen()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "left", left)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "right", right)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "down", down)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "up", up)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "m", fullScreen)

-- vim hotkeys
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "h", left)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "l", right)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "j", down)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "k", up)

-- 80% of screen
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "g", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w * 0.8
  f.h = max.h * 0.8
  win:setFrame(f)
end)

-- bind hotkey
hs.hotkey.bind({'alt', 'ctrl', 'cmd'}, 'n', function()
  -- get the focused window
  local win = hs.window.focusedWindow()
  -- get the screen where the focused window is displayed, a.k.a. current screen
  local screen = win:screen()
  -- compute the unitRect of the focused window relative to the current screen
  -- and move the window to the next screen setting the same unitRect
  win:move(win:frame():toUnitRect(screen:frame()), screen:previous(), true, 0)
end)


require('keyboard') -- Load Hammerspoon bits from https://github.com/jasonrudolph/keyboard
require('Spoons/ip')
