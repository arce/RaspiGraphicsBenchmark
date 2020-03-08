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
local palette = {0xa6cee3,0x1f78b4,0xb2df8a,0x33a02c,0xfb9a99,0xe31a1c,
                 0xfdbf6f,0xff7f00,0xcab2d6,0x6a3d9a,0xffff99,0xb15928}

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
    c[i] = palette[math.floor(math.random()*11)+1]
  end
end

function draw()
  m = m + 1
  if (m==l) then output()
  else
    t[m] = time()
    background(128)
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
