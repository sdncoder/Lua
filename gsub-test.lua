local s = "AAABBCC"
local t = {A = "B", B = "A"}
local result = string.gsub(s, "[AB]", t)
print(result)

print(string.find(s, "B"))


for w in string.gmatch(s, "%a+") do
  print(w)
end

x = string.gsub(s, "B", "X")
print(x)

local z ="interface LO1"
y = z:gsub("%LO1", "10.10.10.1")
print(y)
