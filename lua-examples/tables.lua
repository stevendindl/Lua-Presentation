-- Tables: catch-all data structure - tables.lua

-- ARRAYS/LISTS (most basic table use)
print("-- Array / List --")
local array = {"Lua", "Python", "C++"}
print("First Index of list: ".. array[1]) 

for index, value in ipairs(array) do
  print(index, value)
end


-- DICTIONARIES/MAPS/HASHMAPS (key value pair)
print("\n-- Dictionary --")
local dict = {lang = "Lua", version = 5.1}
print("Get value via key: ".. dict["lang"]) 

dict.year = 1993 -- dynamic assignment to dict

for k, v in pairs(dict) do
  print(k, v)
end


-- SETS (via keys paired with true for fast member checking)
print("\n-- Set --")
local set = {apple = true, banana = true}
local fruit = "banana"
if set[fruit] then
  print(fruit .. " is in the set.")
end


-- STACK (via ability to remove from top)
print("\n-- Stack --")
local stack = {}
table.insert(stack, "first")
table.insert(stack, "second")
print("Pop:", table.remove(stack))  -- second
print("Pop:", table.remove(stack))  -- first


-- QUEUE (via ability to remove at bottom index)
print("\n-- Queue --")
local queue = {}
table.insert(queue, "a")
table.insert(queue, "b")
print("Dequeue:", table.remove(queue, 1))  -- a
print("Dequeue:", table.remove(queue, 1))  -- b


-- RECORDS (table holding various elements, like a C++ struc)
print("\n-- Record --")
local person = {
  name = "Alice",
  age = 30,
  isStudent = false
}
print(person.name .. " is " .. person.age .. " years old.")


-- NAMESPACE/MODULE (functions added to table)
print("\n-- Namespace --")
local MathFuncs = {
  double = function(x) return x * 2 end,
  square = function(x) return x * x end
}
print("Double of 4:", MathFuncs.double(4))
print("Square of 5:", MathFuncs.square(5))

-- Table example of namespace
local tables = {
  dequeue = function(q) table.remove(q, 1) end,
  pop = function(s) table.remove(s) end
}








