-- OOP example in Lua - oop.lua

-- Account table is essentially a 'class' with the name Account
Account = {}

-- Constructor to create new account objects
function Account:new(initial_balance)
    local obj = { balance = initial_balance or 0 }
    setmetatable(obj, self)
    self.__index = self
    return obj
end

-- Method to withdraw money (colon syntax, implicit self)
function Account:withdraw(amount)
    self.balance = self.balance - amount
end

-- Method to deposit money (dot syntax, explicit self)
function Account.deposit(self, amount)
    self.balance = self.balance + amount
end

-- End of Account class
-- Example of usage of 'Account'

-- Create two separate account objects
local a1 = Account:new(1000)
local a2 = Account:new(500)

-- Perform operations on accounts
a1:withdraw(100)          -- withdraw 100 from a1
Account.deposit(a2, 250)  -- deposit 250 into a2

-- Print balances to show state
print("a1 balance:", a1.balance)  -- 900
print("a2 balance:", a2.balance)  -- 750







