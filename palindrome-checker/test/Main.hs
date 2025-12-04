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

    it "ignores case (returns True for mixed case palindromes)" $ do
      isPalindrome "Racecar" `shouldBe` True
      isPalindrome "Noon" `shouldBe` True
      isPalindrome "ABA" `shouldBe` True

    it "returns True for same-case uppercase palindromes" $ do
      isPalindrome "RACECAR" `shouldBe` True
      isPalindrome "NOON" `shouldBe` True
