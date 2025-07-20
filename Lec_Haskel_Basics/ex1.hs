{- 
Ex1.hs - Basic Haskell Function Examples
Contains examples of list processing, recursion, and simple arithmetic
-}

module Ex1 where

-- | Checks whether a list is empty or not.
-- Uses camelCase naming convention (preferred in Haskell)
-- Examples:
-- >>> typeList [1,2,3]
-- "Non-empty list"
-- >>> typeList []
-- "Empty list"
typeList :: [a] -> String
typeList (x:xs) = "Non-empty list"
typeList []     = "Empty list"

{-
Understanding (x:xs) pattern:
- ':' is the list constructor (cons operator)
- x (head) = first element of the list
  Example: In [1,2,3], x is 1
- xs (tail) = remaining elements (can be empty)
  Example: In [1,2,3], xs is [2,3]
- Pattern matching works top-down:
  1. Checks if list matches (x:xs) pattern first
  2. If not, falls through to [] case
-}

-- | Calculates factorial of a number using recursion
-- Type signature ensures input is number and supports equality check
-- Examples:
-- >>> factorial 5
-- 120
-- >>> factorial 1
-- 1
factorial :: (Eq t, Num t) => t -> t
factorial 1 = 1          -- Base case: factorial of 1 is 1
factorial n = n * factorial (n - 1)  -- Recursive case: n! = n * (n-1)!

-- | Adds two numbers
-- Examples:
-- >>> addTwo 3 4
-- 7
-- >>> addTwo 10 20
-- 30
addTwo :: Num a => a -> a -> a
addTwo a b = a + b


--Reverse Function
--Reserve a list


rev :: [a] -> [a]
rev [] = [] --Base Case: Empty List
rev (x:xs) = rev xs ++ [x] --Recursive case: reverse tail and append head


count :: [a] -> Int
count []     = 0      -- Base case: empty list
count (_:xs) = 1 + count xs  -- Recursive case: count tail

--Find the length of an array
len :: Num a1 => [a2] -> a1
len [] = 0
len (x:xs) = len xs +  1

numbers = [7, 9, 13]
n = len numbers
