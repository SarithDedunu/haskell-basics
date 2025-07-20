{-
    a is a type that belongs to the Ord typeclass" — that is, it supports ordering comparisons like <, <=, >, >=
-}

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort greater 
    where
        smaller = [a | a <-xs, a <= x] -- "The list of all 'a' such that 'a' comes from 'xs' and 'a' is less than or equal to 'x'"
        greater = [a |a <-xs, a>x]


rmDup :: Eq a => [a] -> [a] -- eq is a typeclass in haskell which is equality testing
rmDup [] = [] -- Base case
rmDup(x:xs) = x : rmDup[y | y <- xs, y/=x] --Recursive case:
{-
    Take the first element x.
    Keep it (x : ...)
    Remove all elements equal to x from the rest ([y | y <- xs, y /= x])
    Recursively apply rmDup to the filtered list.
-}

main :: IO ()
main = do
    let myList = [1,2,3,2,1,4,3,5]
    print (qsort[3, 1, 8, 9, 10, 20, 5, 8])
    print (rmDup myList)