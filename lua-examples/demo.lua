-- demo.lua

-- Variables and Types
local name = "Lua"      -- String
local version = 5.4     -- Number
local isAwesome = true  -- Boolean

print("Welcome to", name, "version", version)

-- Tables (Lua's versatile data structure)
local person = {
    name = "Michael",
    age = 30,
    hobbies = {"coding", "gaming", "reading"}
}

print(person.name .. " is " .. person.age .. " years old.")

-- Accessing table with index
print("His favorite hobby is " .. person.hobbies[1])

-- If/elseif/else
Score = 85

if Score >= 90 then
    print("Grade: A")
elseif Score >= 80 then
    print("Grade: B")
else
    print("Grade: C or below")
end

-- Loops
for i = 1, 5 do
    print("Counting: " .. i)
end

-- While loop
Count = 3
while Count > 0 do
    print("Countdown: " .. Count)
    Count = Count - 1
end

-- Functions
function greet(user)
    return "Hello, " .. user .. "!"
end

print(greet("Bob"))

-- Anonymous functions and higher-order use
local square = function(x) return x * x end
print("5 squared is " .. square(5))











