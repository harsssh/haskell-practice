module MyLib where
import Data.Char

isPalindrome :: String -> Bool
isPalindrome s = normalized == reversed
  where normalized = map toLower s
        reversed = reverse normalized

isPalindrome' :: String -> Bool
isPalindrome' [] = True
isPalindrome' [_] = True
isPalindrome' (c:cs) = toLower c == toLower (last cs) && isPalindrome' (init cs)
