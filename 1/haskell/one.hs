main = do print $ solution 1000 3 5   
solution x y z = multsum (x-1) y + multsum (x-1) z - multsum (x-1) (y*z)
multsum x y
    | x < y          = 0
    | mod x y == 0   = x+(multsum (x-y) y)
    | otherwise      = multsum (x-1) y 
