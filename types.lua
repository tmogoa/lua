--[[
This is a comment
--]]

-- can assign a function to a variable
b = print

b(type(b))

-- delete a global variable
b = nil

-- Booleans
bool = true

--false
bool = false

-- false
val = nil

-- considered true
val = 0
-- considered true
val = ''

-- Numbers
-- Lua has no integer type

-- String
-- Lua is eight-bit clean

print("alo\n123\"")

-- Automatic string conversion
print('10' + 1) --> 11

print('10 + 1') --> 10 + 1

-- string concat
print(10 .. '1') --> 101

-- manual convert
a = tonumber('10') --> 10

b = tostring(a)

print(type(a)) --> number

print(type(b)) --> string