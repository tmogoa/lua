local a = 10 -- local to this chunk

-- Local variables are easier to access than the global ones.

foo = 10

-- idiom
local foo = foo -- init local foo with global foo

-- creating a block
do
    local a2 = 10
end