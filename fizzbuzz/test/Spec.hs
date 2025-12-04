module Main where

import Test.Hspec
import FizzBuzz (fizzbuzz)
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
  describe "fizzbuzz" $ do
    it "returns Fizz for multiples of 3" $ do
      fizzbuzz 3 `shouldBe` "Fizz"

    it "returns Buzz for multiples of 5" $ do
      fizzbuzz 5 `shouldBe` "Buzz"

    it "returns FizzBuzz for multiples of 15" $ do
      fizzbuzz 15 `shouldBe` "FizzBuzz"

    it "returns the number for others" $ do
      fizzbuzz 1 `shouldBe` "1"
      fizzbuzz 7 `shouldBe` "7"

    it "throws error for non-positive numbers" $ do
      evaluate (fizzbuzz 0) `shouldThrow` anyException
