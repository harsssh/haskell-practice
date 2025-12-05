module Main where

import MyLib

main :: IO ()
main = do
  let list =
        ( addTodo (mkNewTodoItem "title1")
            . addTodo (mkNewTodoItem "title2")
            . addTodo (mkNewTodoItem "title3")
        )
          emptyList

  print list
  print $ findTodo (TodoId 2) list
  print $ (markDone (TodoId 2) . removeTodo (TodoId 1)) list
