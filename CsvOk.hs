module Main where

import Text.Delimited.CSV.Parser
import Text.Trifecta
import System.Environment

main :: IO ()
main =
  do
  args <- getArgs
  print args
  let fp = head args
  result <- parseFromFileEx fileP fp
  case result of
    Failure xs -> print xs
    Success a  -> print a
