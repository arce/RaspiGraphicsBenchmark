require "Array"

local x
local y
local w
local h
local c
local n = 10000
local m = -1
local xr = 1920
local yr = 1080
local t

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
    w[i] = math.random()*xr/8
    h[i] = math.random()*yr/8
    c[i] = color(math.random()*255,math.random()*255,math.random()*255,0)
  end
end

function draw()
  m = m + 1
  t[m] = time()
  if (m==10) then output() end
  background(255);
  noFill()
  for i=0,n-1 do
    stroke(c[i])
    ellipse(x[i],y[i],w[i],h[i])
  end
end

function output()
  t[m] = time()
  for i=0,m-1 do
    print("circles,"..n..","..(t[i+1]-t[i])..","..collectgarbage("count"))
  end
  exit()
end
