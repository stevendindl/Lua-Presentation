-- Lua Types - types.lua

-- Types
Num = 1
Bool = false
Nil = nil
Str = "string!"

-- Table (data struc)
Table = {"one", "two", "three"}

-- Additional
Userdata = io.stdin
Thread = coroutine.create(function() return 42 end)
Func = function(x) return x*100 end

Types = {Num, Bool, Nil, Str, Table, Userdata, Thread, Func}

print("Table elements with their types\n")
for i = 1, #Types do
    print(Types[i], "type == "  .. type(Types[i]) .. "\n")
end


-- Lua Number Type / math.subtype

local n1 = 100
local n2 = 100.0

-- types via type(n) of 100 and 100.0
print(n1, "type: " .. type(n1))
print(n2, "type: " .. type(n2) .. "\n")

-- subtypes via math.type(n) of 100 and 100.0
print(n1, "subtype: " ..  math.type(n1))
print(n2, "subtype: " .. math.type(n2) .. "\n")

-- boolean output of 100 compared to 100.0
print(n1 .. " == " .. n2, n1==n2)











