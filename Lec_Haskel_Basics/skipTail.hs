-- Using tail:

skipTail :: [a] -> Int -> [a] --Type Signature 
skipTail xs 0 = xs -- Base case 1 
skipTail [] _ = [] -- Base case 2
skipTail xs n = skipTail(tail xs)(n-1) --Recursive case

-- Without using tail(using pattern matching):

skipNoTail :: [a] -> Int -> [a]
skipNoTail xs 0 
