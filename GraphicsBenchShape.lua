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
end

function draw()
  background(51)
  fill(102)
  stroke(255)
  strokeWeight(2)
  shape(s,100,100)
end
