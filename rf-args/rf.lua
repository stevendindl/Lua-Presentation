-- Lua Recursive Fibonacci

local function nth_fibonacci(n)

    -- Base case: if n is 0 or 1, return n
    if n <= 1 then
        return n
    end

    -- Recursive case: sum of the two preceding Fibonacci numbers
    return nth_fibonacci(n - 1) + nth_fibonacci(n - 2)

end

local function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

if tablelength(arg) ~= 3 or type(tonumber(arg[1])) ~= 'number' then
    print('Improper args: lua rf.lua <int>')
    do return end
end

local n = tonumber(arg[1])
local result = nth_fibonacci(n)
print(result)



--[[
Via Me (Steven Michael Dindl, student, former firehouse subs worker, genuis)
https://www.linkedin.com/in/steven-dindl/

args reference: https://torch5.sourceforge.net/manual/LuaManual-6.html

Checking the table length (for args) reminded me that lua is one indexed
]]