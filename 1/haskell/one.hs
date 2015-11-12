main = do print $ solution 1000 3 5   

solution :: (Integral a)=>a->a->a->a
solution x y z = multsum (x-1) y + multsum (x-1) z - multsum (x-1) (y*z)

multsum :: (Integral a, Eq a)=>a->a->a
multsum x y
    | x == y         = x
    | mod x y == 0   = x+(multsum (x-1) y)
    | otherwise      = multsum (x-1) y 
