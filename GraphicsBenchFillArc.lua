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
      arc(x[i],y[i],r[i],r[i],0, PI)
    end
  end
end

function output()
  t[m] = time()
  for i=0,m-1 do
    print("fillArcs,"..n..","..(t[i+1]-t[i])..","..collectgarbage("count"))
  end
  exit()
end
