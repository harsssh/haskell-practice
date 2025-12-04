module Main where

import qualified MyLib
import System.Environment (getArgs)
import System.Exit (exitFailure)

main :: IO ()
main = do
  args <- getArgs
  case args of
    [input] -> print $ MyLib.isPalindrome input
    _ -> exitFailure
