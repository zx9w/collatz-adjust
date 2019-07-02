module Collatz
where

import Data.List

collatz :: Int -> Int
collatz x | even x    = x `div` 2
          | otherwise = 3*x+1

collSeq :: Int -> [Int]
collSeq y = go y []
  where
    go :: Int -> [Int] -> [Int]
    go 1 xs = (1:xs)
    go x xs = go (collatz x) (x:xs)
    go _ _  = error "the collatz conjecture is untrue!"

findSecondLongest :: [Int] -> Int
findSecondLongest xs = length $ head $ tail $ reverse $ sortOn length (collSeq <$> xs)
