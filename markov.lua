-- Generates random text based on a sequence on n previous words that follow a sequence

-- we build a table

-- for each prefix of 2 words, the table gives a list with the words that follow that prefix in the text

-- using the table, generate text where each word follows two previous words with the same probability of the previous text

function allwords()
    local line = io.read()
    local pos = 1
    return function ()
        while line do
            local s, e = string.find(line, "%w+", pos)

            if s then
                pos = e + 1
                return string.sub(line, s, e)
            else
                line = io.read()
                pos = 1
            end
        end
        return nil
    end
end

function prefix(w1, w2)
    return w1 .. '' .. w2
end

local statetab

function insert(index, value)
    if not statetab[index] then
        statetab[index] = value
    else
        table.insert(statetab[index], value)
    end
end

local N = 2
local MAXGEN = 10000
local NOWORD = '\n'

-- build table
statetab = {}

local w1, w2 = NOWORD, NOWORD

for w in allwords() do
    insert(prefix(w1, w2), w)

    w1 = w2; w2 = w;
end

insert(prefix(w1, w2), NOWORD)

-- generate text