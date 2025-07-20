-- Binary Tree Definition

data Btree a = Empty | Node a (Btree a) (Btree a)
-- This creates a new data type called Btree that can hold values of any type a.
-- It can be empty or a node containing a (anything)

-- Calculating Tree Size
size :: Btree a -> Int -- type signature
size Empty = 0  -- Base Case
size (Node _ left right) = 1 + size left + size right
{- 
    Count 1 for the current node
    Add the size of the left subtree (size left)
    Add the size of the right subtree (size right)
-}

emptyTree :: Btree a  --- Btree Int/ Btree String is also okay -- Empty is a constructor of Btree a, not a function
emptyTree = Empty

singleNode ::Btree Int
singleNode = Node 1 Empty Empty 

exampleTree :: Btree Int
exampleTree = Node 1                        -- Root 1
                    (Node 2                     -- Left Subtree 2 
                        (Node 4 Empty Empty)    -- Left of 2 is 4
                        Empty                   -- Right of 2 is empty
                    )
                    (Node 3                     -- Right Subtree 3
                        Empty                   -- Left of 3 is empty
                        (Node 5 Empty Empty)    -- Right of 3 is 5
                        )

-- Functions to print sizes (for demo)
main :: IO ()
main = do
    putStrLn ("Size of Single Node Tree: " ++ show (size singleNode))
    putStrLn ("Size of Example Node Tree: " ++ show (size exampleTree))