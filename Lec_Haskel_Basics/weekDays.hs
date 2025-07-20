{-
Enumerated Type
An enumerated type is a custom data type where you list all possible values it can have. For example:
    A traffic light can be Red, Yellow, or Green.
    Days of the week can be Monday, Tuesday, etc.

In Haskell, we define these using the data keyword.
-}

data WeekDays = Monday 
              | Tuesday 
              | Wednesday 
              | Thursday 
              | Friday 
              | Saturday 
              | Sunday 
              deriving (Show) 
{-
-- data WeekDays means "I'm creating a new type called WeekDays".
-- Each | separates possible values (called constructors).
-- So WeekDays can only be one of these 7 values, nothing else.
-}

main :: IO()
main = do
    print(show Monday)

