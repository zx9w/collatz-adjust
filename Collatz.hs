{-# LANGUAGE MagicHash #-}
{-# LANGUAGE BangPatterns #-}
import Data.List
import Data.Ord

collatz :: Int -> Int
collatz x | even x    = x `div` 2
          | otherwise = 3*x+1

collSeq :: Int -> [Int]
collSeq y = go y [] -- No space leak since tail recursive
  where
    go :: Int -> [Int] -> [Int]
    go 1 !xs = (1:xs)
    go x !xs = go (collatz x) (x:xs)

secondSeq :: Int -> [Int]
secondSeq z = head $ tail $ sortOn ((0-) .length) $ (collSeq <$> [1..z])

tenmillion = 10000000 :: Int -- avoid typo
million    = 1000000 :: Int
hundredk   = 100000 :: Int

main :: IO()
main = do
  print (length $ secondSeq hundredk)
  print (sum $ secondSeq hundredk)
