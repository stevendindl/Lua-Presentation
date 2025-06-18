-- Lua Types - types.lua (with io reads for pausing)

-- Types
Num = 1
Bool = false
Str = "string!"
Nil = nil

-- Table (data struc)
Table = {"one", "two", "three"}

-- Additional
Userdata = io.stdin
Thread = coroutine.create(function() return 42 end)
Func = function(x) return x*100 end

Types = {Num, Bool, Str, Nil, Table, Userdata, Thread, Func}

print("Table elements with their types")
for i = 1, #Types do
    PAUSE = io.read()
    print(Types[i], "type == "  .. type(Types[i]))
end
print("------")
PAUSE = io.read()

---------------------------------------------------------------
-- Number types
print("The number type in Lua\n")
local n1 = 100
local n2 = 100.0

print(n1, "type: " .. type(n1)) -- 100
print(n2, "type: " .. type(n2)) -- 100.0

PAUSE = io.read()

print(n1, "subtype: " ..  math.type(n1)) -- 100
print(n2, "subtype: " .. math.type(n2)) -- 100.0

PAUSE = io.read()

print(n1 .. " == " .. n2, n1==n2)
PAUSE = io.read()
