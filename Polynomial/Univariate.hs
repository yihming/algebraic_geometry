module Polynomial.Univariate where

data Polynomial = Poly [Double]

instance Show Polynomial where
  show (Poly []) = ""
  show (Poly xss@(x:xs)) = 
    if length xss == 1
      then if x < 0
             then " - " ++ show (-x)
             else show x
      else if x == 0
             then show (Poly xs)
             else show x ++ " x^" ++ show (length xss - 1) ++ f xs
    where
      f :: [Double] -> String
      f [] = ""
      f l@(e:el) =
        if e == 0
          then f el
          else if e > 0
                 then 
                   case (length l - 1) of
                     0 -> " + " ++ show e
                     _ -> " + " ++ show e ++ " x^" ++ show (length l - 1) ++ f el
                 else 
                   case (length l - 1) of
                     0 -> " - " ++ show (-e)
                     _ -> " - " ++ show (-e) ++ " x^" ++ show (length l - 1) ++ f el

instance Eq Polynomial where
  (Poly []) == (Poly []) = True
  (Poly (a:as)) == (Poly (b:bs)) = 
    a == b && (Poly as) == (Poly bs)

compact :: Polynomial -> Polynomial
compact (Poly []) = Poly []
compact (Poly al) = 
  Poly (f al)
  where
    f :: [Double] -> [Double]
    f [] = [0]
    f l@(a:as) = 
      if a == 0.0
        then f as
        else l

(<+>) :: Polynomial -> Polynomial -> Polynomial
(Poly a) <+> (Poly b)
  | length a > length b = 
      let b' = (replicate (length a - length b) 0) ++ b
      in  compact $ Poly (zipWith (+) a b')  
  | length a < length b =
      let a' = (replicate (length b - length a) 0) ++ a  
      in  compact $ Poly (zipWith (+) a' b)    
  | otherwise = compact $ Poly (zipWith (+) a b)

(<->) :: Polynomial -> Polynomial -> Polynomial
pa <-> (Poly b) = 
  pa <+> (Poly (map ((-1)*) b))

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

leadingTermDeg :: Polynomial -> Int
leadingTermDeg (Poly al) = length al - 1

isZeroPoly :: Polynomial -> Bool
isZeroPoly (Poly []) = False
isZeroPoly (Poly al) = and (map (==0.0) al)

polydiv :: Polynomial -> Polynomial -> (Polynomial, Polynomial)
(Poly []) `polydiv` _ = error "Invalid dividend polynomial!"
_ `polydiv` (Poly []) = error "Invalid divisor polynomial!"
pa@(Poly (a:as)) `polydiv` pb@(Poly (b:bs)) = 
  if isZeroPoly pa
    then ((Poly [0]), (Poly [0]))
    else if (leadingTermDeg pa) < (leadingTermDeg pb)
           then ((Poly [0]), pa)
           else let deg_diff = leadingTermDeg pa - leadingTermDeg pb
                    current_quo = Poly ((a / b) : (replicate deg_diff 0))
                    current_sub = pb <*> current_quo
                    current_rem = pa <-> current_sub
                    (next_quo, final_rem) = current_rem `polydiv` pb
                in  (current_quo <+> next_quo, final_rem)

infixl 6 <+>
infixl 6 <->
infixl 7 <*>

firstDerivative :: Polynomial -> Polynomial
firstDerivative (Poly []) = Poly []
firstDerivative (Poly as) =
  if length as == 1
    then Poly [0]
    else Poly (f as)
  where
    f :: [Double] -> [Double]
    f as@(e:el) =
      if length as == 1
        then []
        else let deg = length as - 1
             in  (e * (fromIntegral deg)):(f el)

getValue :: Polynomial -> Double -> Double
getValue (Poly []) _ = 0
getValue (Poly as@(e:el)) n =
  let deg = length as - 1
  in  e * n^deg + (getValue (Poly el) n)