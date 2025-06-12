-- Lua Recursive Fibonacci

local function nth_fibonacci(n)

    -- Base case: if n is 0 or 1, return n
    if n <= 1 then
        return n
    end

    -- Recursive case: sum of the two preceding Fibonacci numbers
    return nth_fibonacci(n - 1) + nth_fibonacci(n - 2)

end

local n = 50
local result = nth_fibonacci(n)
print(result)



--[[
Via Me (Steven Michael Dindl, programmer, student, former firehouse subs worker, genuis)
https://www.linkedin.com/in/steven-dindl/
]]