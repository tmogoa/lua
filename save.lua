local cmd = io.read('*ld')

local file = io.open('grid.txt')

io.input(file)

local line = io.read()

-- parse gridData to grid 

local grid = {}


-- read character at position
function char_at(str, pos)
    
    return string.sub(str, pos, pos) 
    
end

function is_num(str)
    
    return tonumber(str) ~= nil
    
end

function parse_rows(line)
    
    local row_key, row_i, row = 0, 0, {}
    
    for i = 1, #line do
        
        local token = char_at(line, i)
        
        if token == ')' then
            
            -- add the row
            table.insert(grid, row_key, row)
            
            -- init row element countter
            row_i = 0
            
            -- init row
            row = {}
        
        end
        
        if is_num(token) then
            
            if char_at(line, i - 1) == '(' then
                
                row_key = tonumber(token)
                
            else
                
                row[row_i] = tonumber(token)
                
                row_i = row_i + 1
                
            end
            
        end
            
    end
    
end


parse_rows(line)

-- tests
-- print(grid[0][0] .. ' = 4')

-- print(grid[7][7] .. ' = 2')


-- implement commands

function len(t)
    
    local count = 0
    
    for _ in pairs(t) do
        
        count = count + 1
        
    end
    
    return count
    
end

function numrows()
    
    print(len(grid))
    
end

function numcols()
    
    local row = grid[0]
    
    print(len(row))
    
end

function showcol(c)
    
    local col = grid[0][c]
    
    for i = 1, (len(grid) - 1) do
        
        print(i)
        
        print(grid[i][0])
        
        -- col = col .. ' ' .. grid[i][c]
        
    end
    
    -- print(col)
    
end

function parse_cmd(c)
    
    local call = {}
    
    for word in string.gmatch(c, '%w+') do
        
        table.insert(call, word)
        
    end
    
    return call
    
end

cmd = parse_cmd(cmd)


if cmd[1] == "numrows" then numrows() end

if cmd[1] == "numcols" then numcols() end

if cmd[1] == "showcol" then showcol(tonumber(cmd[2])) end

table.insert()

math.floor
