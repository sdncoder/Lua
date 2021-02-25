
---lua
-- build ios idf template
--
local counter = 1 -- set table to first index for load of configlets
build = {} -- create table  -- setup table "build"
--
-- load base security configlet
io.input("base-security.txt") -- read external file

-- functions
function readFile(build)

repeat
 temp = io.read("*line")  -- read next line when you call io.read()
 if temp ~= "" then -- not EOF
   build[counter] = temp -- write line into table
   counter = counter + 1
 end
until temp == nul
end

-- call functions
readFile(build)  -- pass file into build table
x=1  -- first index of table [1]
repeat
 print(build[x])
 x=x+1
 until build[x]==nul -- EOF
