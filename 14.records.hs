import Distribution.PackageDescription (PackageDescription(subLibraries))
--in a list all data should be in one data type
--what will we do if we want to have a combination of data types

--we use records for that

data Student = Student{ name  :: String
                      , major :: String
                      , age   :: Int
                      , gpa   :: Double
                      } deriving Show 
--deriving Show lets Haskell automatically create a way to convert your custom type (like Student) to a string. Without it, show student1 won't work because Haskell doesn't know how to print it.


main :: IO()
main = do
    let student1 = Student {name = "Alice", major = "Biology", age = 24, gpa = 3.6 }
    let student2 = Student {name = "Bob", major = "Maths", age = 24, gpa = 3.6 } 
    let student3 = Student {name = "Jane", major = "IT", age = 24, gpa = 3.6 }
    --putStrLn (show student1)
    print student1
    print student2
    --Accessing data in a records
    putStrLn (name student1)
    print (gpa student2)
    print(age student3)
