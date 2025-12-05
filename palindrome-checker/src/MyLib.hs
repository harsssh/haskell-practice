module MyLib where
import Data.Char

isPalindrome :: String -> Bool
isPalindrome s = normalized == reversed
  where normalized = map toLower s
        reversed = reverse normalized

isPalindrome' :: String -> Bool
isPalindrome' = check . normalize
  where
    normalize = map toLower

    check [] = True
    check [_] = True
    check (c:cs) = c == last cs && check (init cs)
