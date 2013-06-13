module Polynomial where

data Polynomial = Poly [Double]

instance Show Polynomial where
  show (Poly []) = ""
  show (Poly xss@(x:xs)) = 
    if length xss == 1
       then " " ++ show x
       else if x == 0     
               then show (Poly xs)
               else " " ++ show x ++ " x^" ++ show (length xss - 1) ++ " +" ++ show (Poly xs)
    
(<+>) :: Polynomial -> Polynomial -> Polynomial
(Poly a) <+> (Poly b)
  | length a > length b = 
      let b' = (replicate (length a - length b) 0) ++ b
      in  Poly (zipWith (+) a b')  
  | length a < length b =
      let a' = (replicate (length b - length a) 0) ++ a  
      in  Poly (zipWith (+) a' b)    
  | otherwise = Poly (zipWith (+) a b)

testpoly :: Polynomial
testpoly = Poly [3,0,5]

tp :: Polynomial
tp = Poly [4,4]

(<*>) :: Polynomial -> Polynomial -> Polynomial
(Poly []) <*> _ = Poly []
_ <*> (Poly []) = Poly []
(Poly as) <*> (Poly bl@(b:bs)) =
  let degree = length bl - 1 
  in (f as b degree) <+> ((Poly as) <*> (Poly bs))
  where
    f :: [Double] -> Double -> Int -> Polynomial
    f al e d = 
      let res = (map (e*) al) ++ (replicate d 0)
      in  Poly res

polydiv :: Polynomial -> Polynomial -> Polynomial
(Poly a) `polydiv` (Poly b) = undefined


infixl 6 <+>
infixl 7 <*>