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
  x = Array()
  y = Array()
  w = Array()
  h = Array()
  c = Array()
  t = Array()
  for i=0,n-1 do
    x[i] = math.random()*xr
    y[i] = math.random()*yr
    w[i] = math.random()*xr/10
    h[i] = math.random()*yr/10
    c[i] = colors[math.random(1,12)]
  end
end

function draw()
  m = m + 1
  if (m==l) then output()
  else
    t[m] = time()
    background(255)
    noFill()
    for i=0,n-1 do
      stroke(c[i])
      rect(x[i],y[i],w[i],h[i])
    end
  end
end

function output()
  t[m] = time()
  for i=0,m-1 do
    print("rects,"..n..","..(t[i+1]-t[i])..","..collectgarbage("count"))
  end
  exit()
end
