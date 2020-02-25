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
    c[i] = color(math.random()*255,math.random()*255,math.random()*255,0)
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
