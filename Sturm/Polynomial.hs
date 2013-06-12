module Polynomial where

import Data.List
import Data.Char

data Polynomial = Uni [Double]

instance Show Polynomial where
show (Uni []) = "0"
show (Uni nl@(n:ns)) = 
  let degree = length nl - 1
  in  case degree of
        0 -> show n
        _ -> show n ++ " x^" ++ show degree ++ " + "
               ++ show (Uni ns)

test :: Polynomial
test = [0, 1.5, 3, 0, 9]