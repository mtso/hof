function add(x)
    return function(y)
        return x+y
    end
end

function each(list, callback)
    for item in pairs(list) do
        callback(item)
    end
end

print(add(1)(2))
each({1,2,3}, print)
