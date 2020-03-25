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
    c[i] = color(math.random()*255,math.random()*255,math.random()*255)
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
