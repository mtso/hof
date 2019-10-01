module Hof (add, each)
where

import System.IO

-- Returns a function adding `x` to its parameter. This example is "pointfree"
-- ex: (add 5) 6    ==> 11
add :: Num a => a -> a -> a
add = (+)


-- Applies `callback` function f to `items`(x:xs) and returns a list with the results
-- ex: each (add 1) [1, 2, 3]    ==> [2, 3, 4]
each :: (a -> b) -> [a] -> [b]
each f [] = []
each f (x:xs) = (f x) : each f xs


-- Main function for example purposes
main :: IO ()
main = do
  let x = (add 5) 6
  putStrLn $ "Calculating:(add 5) 6 ==> " ++ show x
  let xs = each (add 1) [1, 2, 3]
  putStrLn $ "Calculating: each (add 1) [1, 2, 3] ==> " ++ show xs
