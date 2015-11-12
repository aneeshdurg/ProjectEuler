main = do print $ solution 20

solution x
    | x == 1    = 1
    | otherwise = gCF (solution (x-1)) x 
--Returns a list of prime factors, only checks for factors between 2 and 20 since that's all we need
factor :: (Integral a)=>a->a->[a]
factor x y
    | y <= 1         = [x]
    | y >= x         = factor x (x-1) 
    | x `mod` y == 0 = factor y 20 ++ factor (x `div` y) 20
    | otherwise      = factor x (y-1)
--find the greatest common factor of x and y
gCF x y
    | y > x = gCF y x
    | otherwise = product [ f | f <- sameF (factor x 20) (factor y 20) ]
--ensures that for a list yl with n instances of an element y, xs also has at least n instances of y
sameF xs yl
    | yl == []  = xs
    | n>0       = sameF xn ys    
    | otherwise = sameF xs ys
    where y  = head yl
          ys = tail yl  
          n  = freq y yl - freq y xs 
          xn = xs ++ replicate n y
--find the frequency of an element in a list
freq :: (Integral a)=>a->[a]->a
freq x xs
    | xs == []     = 0
    | x == head xs = 1 + freq x (tail xs)   
    | otherwise    = freq x (tail xs)      