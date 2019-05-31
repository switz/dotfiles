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
