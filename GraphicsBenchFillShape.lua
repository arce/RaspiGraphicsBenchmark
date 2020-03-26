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
local s

function setup()
  size(xr,yr)
  if (args[1] ~= null) then
	n = args[1]
  end
  beginShape()
  vertex(0, -50)
  vertex(14, -20)
  vertex(47, -15)
  vertex(23, 7)
  vertex(29, 40)
  vertex(0, 25)
  vertex(-29, 40)
  vertex(-23, 7)
  vertex(-47, -15)
  vertex(-14, -20)
  s = saveShape(CLOSE)
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
    c[i] = color(math.random()*255,math.random()*255,math.random()*255)
  end
end

function draw()
  m = m + 1
  if (m==l) then output()
  else
    t[m] = time()
    background(255)
    noStroke()
    for i=0,n-1 do
      fill(c[i])
      shape(s,x[i],y[i])
    end
  end
end

function output()
  t[m] = time()
  for i=0,m-1 do
    print("fillShapes,"..n..","..(t[i+1]-t[i])..","..collectgarbage("count"))
  end
  exit()
end
