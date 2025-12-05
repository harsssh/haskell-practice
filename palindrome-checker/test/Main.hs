module Main (main) where

import MyLib (isPalindrome, isPalindrome')
import Test.Hspec
import Control.Monad (forM_)

main :: IO ()
main = hspec $ do
  let impls :: [(String, String -> Bool)]
      impls = [("isPalindrome", isPalindrome), ("isPalindrome'", isPalindrome')]

      cases :: [(String, Bool)]
      cases =
        [ ("racecar", True),
          ("noon", True),
          ("hello", False),
          ("", True),
          ("a", True),
          ("Racecar", True),
          ("Noon", True),
          ("ABA", True),
          ("RACECAR", True),
          ("NOON", True)
        ]

  forM_ impls $ \(name, fn) ->
    context name $
      forM_ cases $ \(input, expected) ->
        it ("returns " ++ show expected ++ " for " ++ show input) $
          fn input `shouldBe` expected
