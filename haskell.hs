module Hof (add, each)
where

import System.IO

-- Returns a function adding `x` to its parameter
-- ex: (add 5) 6    ==> 11
add :: Num a => a -> a -> a
add x = (+) x


-- Applies `callback` function to `items` and returns a list with the results
-- ex: each [1, 2, 3] (add 1)    ==> [2, 3, 4]
each :: [a] -> (a -> b) -> [b]
each items callback = map callback items


-- Main function for example purposes
main :: IO ()
main = do
  let x = (add 5) 6
  putStrLn $ "Calculating:(add 5) 6 ==> " ++ show x
  let xs = each [1, 2, 3] (add 1)
  putStrLn $ "Calculating: each [1, 2, 3] (add 1) ==> " ++ show xs
