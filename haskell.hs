module Hof (add, each)
where

-- returns a function adding `x` to its parameter
-- ex: (add 5) 6    ==> 11
add :: Num a => a -> a -> a
add x = (+) x


-- applies `callback` function to `items` and returns a list with the results
-- ex: each [1, 2, 3] (add 1)    ==> [2, 3, 4]
each :: [a] -> (a -> b) -> [b]
each items callback = map callback items
