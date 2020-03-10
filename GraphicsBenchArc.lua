require "Array"

local x
local y
local r
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
  r = Array()
  c = Array()
  t = Array()
  for i=0,n-1 do
    x[i] = math.random()*xr
    y[i] = math.random()*yr
    r[i] = math.random()*xr/10
    c[i] = color(255,0,0,255)
  end
end

function draw()
  m = m + 1
  if (m==l) then output()
  else
    t[m] = time()
    background(255);
    for i=0,n-1 do
      stroke(c[i])
      arc(x[i],y[i],r[i],r[i],0,PI)
    end
  end
end

function output()
  t[m] = time()
  for i=0,m-1 do
    print("arcs,"..n..","..(t[i+1]-t[i])..","..collectgarbage("count"))
  end
  exit()
end
