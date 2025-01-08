a, b = 10, 2

-- swap
x, y = y, x

print(x, y)

if a == 0 then
    a = 1
end

while a == 10 do
    a = false
    print(a)
end

-- numeric for-loop
for i=1,10 do
    print(i)
end

-- generic for-loop: use of iterator functions
a = {1, 2}

for i, v in ipairs(a) do
    print(i, v)
end
