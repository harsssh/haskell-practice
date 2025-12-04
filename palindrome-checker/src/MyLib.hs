module MyLib where
import Data.Char

isPalindrome :: String -> Bool
isPalindrome s = normalized == reversed
  where normalized = map toLower s
        reversed = reverse normalized
