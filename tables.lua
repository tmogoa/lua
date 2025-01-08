-- basically associative arrays
-- indexable by anything except nil
-- have dynamic size
-- the only data structure in Lua
-- Tables are objects

-- constructor expression
a = {}

a[10] = 'Hell0'

print(a[10])

-- deleting a field in the table
a[10] = nil

print(a[10])

-- a synctactic sugar
a.x = 10

print(a.x)

c = {}

-- iterate over a table
for i = 1, 10 do
    c[i] = i * 2.4
end

for i, l in ipairs(c) do
    print(l)
end

-- records
a = {
    x = 100,
    y = 200
}

print(a.x == a['x'])

s = "hello world from 1"
for w in string.gmatch(s, "%w+") do
print(w)
end


