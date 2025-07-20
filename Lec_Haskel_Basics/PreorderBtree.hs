import Distribution.ReadE (parsecToReadEErr)
-- Definition of a Btree

-- declares a new data type Btree, 
-- Defines two Constructors for Btree
data Btree a = Empty | Node a (Btree a ) (Btree a) -- left and right subtrees


-- preorder Tracersal function
preorder :: Btree a -> [a]
preorder Empty = [] -- An empty tree returns an empty list
preorder (Node x left right) = [x] ++ preorder left ++ preorder right

-- Node - constructor
-- x left right - variables 
-- pattern matching

exampleTree :: Btree Int
exampleTree = 
    Node 1
        (Node 2 --Left subtree
            (Node 4 Empty Empty) -- Left of 2 is 4 
            (Node 5 Empty Empty) -- Right of 2 is 5
        )
        (Node 3 Empty Empty)

main :: IO ()
main = do 
    print $ preorder exampleTree    