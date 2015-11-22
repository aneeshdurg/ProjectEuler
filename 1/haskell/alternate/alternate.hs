main = do print $ solution 3 5
solution x y = multsum 1000 x + multsum 1000 y - multsum 1000 (x * y)
multsum x y = y * (sumup ((x-1)`div`y) 0) 
sumup x y
    | x == 0    = 0
    | otherwise = x+sumup (x-1) y