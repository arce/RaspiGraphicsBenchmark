require "Array"

local x1
local y1
local x2
local y2
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
  x1 = Array()
  y1 = Array()
  x2 = Array()
  y2 = Array()
  c = Array()
  t = Array()
  for i=0,n-1 do
    x1[i] = math.random()*xr
    y1[i] = math.random()*yr
    x2[i] = x1[i] + math.random()*xr/10
    y2[i] = y1[i] + math.random()*yr/10
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
      stroke(c[i])
      line(x1[i],y1[i],x2[i],y2[i])
    end
  end
end

function output()
  t[m] = time()
  for i=0,m-1 do
    print("lines,"..n..","..(t[i+1]-t[i])..","..collectgarbage("count"))
  end
  exit()
end
