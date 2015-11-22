main = do print $ solution 1000000 9 [0..9]
solution x y d
    | x == 0 = d
    | otherwise = [(d !! digit x y)] ++ solution (x`rem`(factorial y)) (y-1) (filter (/=(d !! digit x y)) d)
    where digit x y = x`div`(factorial y)
          factorial n
            | n == 1    = 1
            | otherwise = n*factorial(n-1)