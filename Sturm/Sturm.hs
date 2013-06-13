module Sturm where

import Polynomial


test :: IO ()
test = do
  let f = Poly [1,1,0,-1,-1]
  let sturm_seq = genSturmSequence f
  let a_lower = -5000
  let a_upper = 5000
  let num_roots = calcNumRoots sturm_seq (a_lower, a_upper)
  putStrLn $ "The number of real roots is " ++ show num_roots

genSturmSequence :: Polynomial -> [Polynomial]
genSturmSequence (Poly []) = error "Invalid polynomial!"
genSturmSequence p@(Poly as) = 
  let p0 = p
      p1 = firstDerivative p0
  in  [p0, p1] ++ (g p0 p1)
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
