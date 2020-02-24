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
  local f = createFont("../bin/default.ttf", 12)
  textFont(f)
  if (args[1] ~= null) then
	n = args[1]
  end
  x = Array()
  y = Array()
  c = Array()
  t = Array()
  for i=0,n-1 do
    x[i] = math.random()*xr
    y[i] = math.random()*yr
    c[i] = color(math.random()*255,math.random()*255,math.random()*255,0)
  end
end

function draw()
  m = m + 1
  t[m] = time()
  if (m==10) then output() end
  background(255);
  for i=0,n-1 do
    fill(c[i])
    text("ABCDEFGHIJK",x[i],y[i])
  end
end

function output()
  t[m] = time()
  for i=0,m-1 do
    print("texts,"..n..","..(t[i+1]-t[i])..","..collectgarbage("count"))
  end
  exit()
end
