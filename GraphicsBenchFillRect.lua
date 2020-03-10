require "Array"

local x
local y
local w
local h
local c
local n = 10000
local m = -1
local l = 10
local xr = 1920
local yr = 1080
local t
local colors =
{{0xa6,0xce,0xe3},
{0x1f,0x78,0xb4},
{0xb2,0xdf,0x8a},
{0x3,0x3a,0x02c},
{0xfb,0x9a,0x99},
{0xe,0x31,0xa1c},
{0xfd,0xbf,0x6f},
{0xff,0x7f,0x00},
{0xca,0xb2,0xd6},
{0x6a,0x3d,0x9a},
{0xff,0xff,0x99},
{0xb1,0x59,0x28}}

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
    c[i] = math.random(1,12)
  end
end

function draw()
  m = m + 1
  if (m==l) then output()
  else
    t[m] = time()
    background(255)
    for i=0,n-1 do
      fill(colors[c[i]][1],colors[c[i]][2],colors[c[i]][3])
      rect(x[i],y[i],w[i],h[i])
    end
  end
end

function output()
  t[m] = time()
  for i=0,m-1 do
    print("fillRects,"..n..","..(t[i+1]-t[i])..","..collectgarbage("count"))
  end
  exit()
end
