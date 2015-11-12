main = do print $ solution 100

solution x = sum [ y * (triangleSum x - y) | y <- [1..x] ]
    where triangleSum x = x*(x+1) `div` 2