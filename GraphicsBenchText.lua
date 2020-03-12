require "Array"

local x
local y
local w
local h
local c
local n = 1000
local m = -1
local l = 10
local xr = 1920
local yr = 1080
local t
local colors = {0xa6cee3ff,0x1f78b4ff,0xb2df8aff,0x33a02cff,0xfb9a99ff,0xe31a1cff,
                0xfdbf6fff,0xff7f00ff,0xcab2d6ff,0x6a3d9aff,0xffff99ff,0xb15928ff}

function setup()
  size(xr,yr)
  if (args[1] ~= null) then
	n = args[1]
  end
  local f = createFont("default.ttf", 12)
  textFont(f)
  x = Array()
  y = Array()
  c = Array()
  t = Array()
  for i=0,n-1 do
    x[i] = math.random()*xr
    y[i] = math.random()*yr
    c[i] = colors[math.random(1,12)]
  end
end

function draw()
  m = m + 1
  if (m==l) then output()
  else
    t[m] = time()
    background(255)
    for i=0,n-1 do
      fill(c[i])
      text("Hello World",x[i],y[i])
    end
  end
end

function output()
  t[m] = time()
  for i=0,m-1 do
    print("texts,"..n..","..(t[i+1]-t[i])..","..collectgarbage("count"))
  end
  exit()
end
