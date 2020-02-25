require "Array"

local x
local y
local c
local n = 1000
local m = -1
local l = 0
local w = 1024
local h = 768
local t

function setup()
  size(xr,yr)
  if (args[1] ~= null) then
	n = args[1]
  end
  x = Array()
  y = Array()
  c = Array()
  for i=0,n-1 do
    x[i] = math.random()*w
    y[i] = math.random()*h
    c[i] = color(math.random()*255,math.random()*255,math.random()*255,0)
  end
end

function draw()
  m = m + 1
  if (m==l) then output()
  else 
    t[m] = time()
    background(255);
    for i=0,n-1 do
      fill(c[i])
      rect(x[i],y[i],6,6)
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
