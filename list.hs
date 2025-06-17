scores :: [Integer]
scores = [79, 83, 100, 65, 89, 46]

main = do
    print(scores !! 0) --list indexing (!! - indexing operator)
    print(scores !! 3)

    print(head scores) --grabs the first item from the list
    print(last scores) --grabs the last item from the list
    print(init scores) --grabs all items expect the last item
    print(tail scores) --grabs all items expect the first item