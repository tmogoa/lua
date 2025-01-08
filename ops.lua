-- exponentiation
print(2^2)

-- inequality
print('true = ' .. tostring(2 ~= 3))

-- and and or are short-circuited

-- Lua idiom
v = true
x = false

x = x or v

print(x) -- true

-- negation

print(not nil) -- true