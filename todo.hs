module Todo where

type Todo = String

addTodo :: Todo -> [Todo] -> [Todo]
addTodo item todos = todos ++ [item]

deleteTodo :: Int -> [Todo] -> [Todo]
deleteTodo n todos = take n todos ++ drop (n + 1) todos

listTodos :: [Todo] -> IO ()
listTodos todos = mapM_ putStrLn $ zipWith (\i t -> show i ++ ". " ++ t) [0..] todos
