require "Array"

local x
local y
local c
local n = 0
local m = 0
local w = 1024
local h = 768
local t

function setup()
  size(1024,768)
  if (args ~= null) then
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
  t = time()
end

function draw()
  background(255);
  for i=0,n-1 do
    fill(c[i])
    rect(x[i],y[i],6,6)
  end
  print("rects,"..n..","..(time()-t)..","..collectgarbage("count"))
  t = time()
  m = m + 1
  if (m==10) then exit() end
end
