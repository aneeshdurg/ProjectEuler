main = do print $ solution 999 999 

solution :: (Integral a, Show a)=>a->a->a
solution x y 
    | y < 100            = solution (x-1) (x-1)
    | isPalindrome (x*y) = x*y
    | otherwise          = solution x (y-1)
    where isPalindrome x = reverse (show x) == show x