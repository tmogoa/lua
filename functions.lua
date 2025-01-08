o:foo(x)

-- equal to

o.foo(0, x)

(foo(w)) -- return exactly one argument.

print(table.unpack({1, 2})) -- variable args

function func(a, b, ...)
    print ()
end

-- dummy variable
local _, x = string.find('ld', 'd')

function select (n, ...)
    return arg[n]
end

