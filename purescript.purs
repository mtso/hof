module Main where

import Prelude
import Effect (Effect)
import Effect.Console (logShow)
import Data.Array
import Data.Maybe

main :: Effect Unit
main = do
  let sum = (add 5) 6
  logShow sum
  let out = each (add 7) ([ 1, 2, 3, 4 ])
  logShow out
  let out2 = each2 (add 7) ([ 1, 2, 3, 4 ])
  logShow out2

-- much like Haskell, this Returns a function adding `x` to its parameter. 
add :: Int -> Int -> Int
add = (+)

-- Applies function `fn` to each element in the list 
-- effectively a map function
each :: forall a b. (a -> b) -> Array a -> Array b
each fn arr = case uncons arr of
  Just res -> (fn res.head) : (each fn res.tail)
  Nothing -> []

-- Slightly different way of writing it
each2 :: forall a b. (a -> b) -> Array a -> Array b
each2 fn arr = case (head arr), (tail arr) of
  Just x, Just xs -> (fn x) : (each2 fn xs)
  Just x, Nothing -> [ (fn x) ]
  _, _ -> []
