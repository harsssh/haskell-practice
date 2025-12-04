module Main where

main :: IO ()
main = mapM_ (putStrLn . fizzbuzz) [1..16]

fizzbuzz :: Int -> String
fizzbuzz n
  | n <= 0 = "error"
  | n `mod` 15 == 0 = "FizzBuzz"
  | n `mod` 3 == 0 = "Fizz"
  | n `mod` 5 == 0 = "Buzz"
  | otherwise = show n

