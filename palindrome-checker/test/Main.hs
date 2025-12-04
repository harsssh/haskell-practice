module Main (main) where

import Test.Hspec
import MyLib (isPalindrome)

main :: IO ()
main = hspec $ do
  describe "isPalindrome" $ do
    it "returns True for simple palindromes" $ do
      isPalindrome "racecar" `shouldBe` True
      isPalindrome "noon" `shouldBe` True

    it "returns False for non-palindromes" $ do
      isPalindrome "hello" `shouldBe` False

    it "handles empty string" $ do
      isPalindrome "" `shouldBe` True

    it "handles single character" $ do
      isPalindrome "a" `shouldBe` True
