module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.Array
import Data.Maybe
import Data.Tuple

main :: Effect Unit
main = do
  let sum = (add 5) 6
  log $ show sum
  let out = each (add 7) ([1,2,3,4])
  log $ show out
  let out2 = each2 (add 7) ([1,2,3,4])
  log $ show out2


-- much like Haskell, this Returns a function adding `x` to its parameter. 
add :: Int -> Int -> Int
add = (+)

-- Applies function `fn` to each element in the list 
-- effectively a map function
each :: forall a b.  (a -> b) -> Array a -> Array b 
each fn arr = case head arr of 
  Just x -> case tail arr of 
    Just xs -> (fn x) : (each fn xs)
    Nothing -> [ (fn x) ]
  Nothing -> []


-- Slightly different way of writing it
each2 :: forall a b. (a -> b) -> Array a -> Array b 
each2 fn arr = case Tuple (head arr) (tail arr) of 
  Tuple (Just x) (Just xs) -> (fn x) : (each2 fn xs)
  Tuple (Just x) (Nothing) -> [(fn x)]
  Tuple ( _ ) ( _ ) -> []
