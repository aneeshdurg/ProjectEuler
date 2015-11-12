main = do print $ solution [1, 1]

solution :: (Num a, Integral a)=>[a]->a
solution x
	| last x > 4000000    = 0
	| otherwise           = if even (last x) then (last x) + solution (increment x) else solution (increment x)
	where increment x     = [last x, last x + x !! 0]