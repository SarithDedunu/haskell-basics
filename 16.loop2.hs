--writing a loop to print items in a list to console
students :: [String]
students = ["Alice", "John", "Peter", "Mavy", "Tim"]

-- Recursive function to print all students

printStudents :: Int -> IO () 
printStudents num = do
    let student = students !! num --Prints the current student.

    if num <= 4 
    then do 
        putStrLn student
        printStudents (num +1)
    else putStrLn "Printed all Students"


main :: IO()
main = do
    printStudents 0
