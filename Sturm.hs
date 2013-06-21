module Sturm where

import Polynomial.Univariate


test :: IO ()
test = do
  let f = Poly [1,1,0,-1,-1]
  let f' = firstDerivative f
  let sturm_seq = genSturmSequence f f'
  let a_lower = -5000
  let a_upper = 5000
  let num_roots = calcNumRoots sturm_seq (a_lower, a_upper)
  putStrLn $ "The number of real roots is " ++ show num_roots

test2 :: IO ()
test2 = do
  let f = Poly [1, 0, -1]
  let g = Poly [1, 1]
  let gs = [Poly [1], g, g <*> g]
  let res_l = map (\x -> tarskiQuery x f (-5000, 5000)) gs
  putStrLn $ show res_l


tarskiQuery :: Polynomial -> Polynomial -> (Double, Double) -> Int
tarskiQuery g f (a, b) = 
  let sturm_seq = genSturmSequence f g
      res_a = map (flip getValue a) sturm_seq
      res_b = map (flip getValue b) sturm_seq
      sc_a = calcSignChange res_a
      sc_b = calcSignChange res_b
  in  sc_a - sc_b

genSturmSequence :: Polynomial -> Polynomial -> [Polynomial]
genSturmSequence (Poly []) _ = error "Invalid polynomial!"
genSturmSequence _ (Poly []) = error "Invalid polynomial!"
genSturmSequence p0 p1 = 
  [p0, p1] ++ (g p0 p1)
  where 
    g :: Polynomial -> Polynomial -> [Polynomial]
    g pa pb = 
      let (_, pc) = pa `polydiv` pb
          pc' = (Poly [0]) <-> pc
      in  if pc' == (Poly [0])
            then []
            else pc':(g pb pc')
          

calcNumRoots :: [Polynomial] -> (Double, Double) -> Int
calcNumRoots ps (a, b) = 
  let res_a = map (flip getValue a) ps
      res_b = map (flip getValue b) ps
      sc_a  = calcSignChange res_a
      sc_b  = calcSignChange res_b
  in  sc_a - sc_b

calcSignChange :: [Double] -> Int
calcSignChange [] = 0
calcSignChange as = 
  if length as == 1
    then 0
    else let (x:y:el) = as
         in  if x * y < 0
               then 1 + (calcSignChange (y:el))
               else if y == 0
                      then if null el
                             then 0
                             else 
                               let z = head el
                               in  if x * z < 0
                                     then 1 + (calcSignChange (y:el))
                                     else calcSignChange (y:el)
                      else calcSignChange (y:el)

