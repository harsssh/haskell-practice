{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedRecordDot #-}

module MyLib
  ( TodoId (..),
    TodoStatus (..),
    TodoTitle (..),
    TodoList,
    TodoItem (id, title, status),
    NewTodoItem (title),
    toList,
    mkNewTodoItem,
    emptyList,
    addTodo,
    removeTodo,
    findTodo,
    markDone,
    markTodo,
  )
where

import Data.List
import Safe (maximumMay)

newtype TodoTitle = TodoTitle String deriving (Show, Eq)

newtype TodoId = TodoId Int deriving (Show, Eq, Ord, Enum)

data TodoStatus = Todo | Done deriving (Show, Eq)

data TodoItem = TodoItem {id :: TodoId, title :: TodoTitle, status :: TodoStatus} deriving (Show, Eq)

newtype NewTodoItem = NewTodoItem {title :: TodoTitle} deriving (Show, Eq)

newtype TodoList = TodoList [TodoItem] deriving (Show, Eq)

mkNewTodoItem :: String -> NewTodoItem
mkNewTodoItem s = NewTodoItem {title = TodoTitle s}

emptyList :: TodoList
emptyList = TodoList []

toList :: TodoList -> [TodoItem]
toList (TodoList l) = l

addTodo :: NewTodoItem -> TodoList -> TodoList
addTodo item (TodoList l) = TodoList (newItem : l)
  where
    maxId = maximumMay $ map (.id) l
    nextId = maybe (TodoId 1) succ maxId
    newItem = TodoItem {id = nextId, title = item.title, status = Todo}

removeTodo :: TodoId -> TodoList -> TodoList
removeTodo x (TodoList l) = TodoList (filter ((/= x) . (.id)) l)

findTodo :: TodoId -> TodoList -> Maybe TodoItem
findTodo x (TodoList l) = find ((== x) . (.id)) l

mark :: TodoStatus -> TodoId -> TodoList -> TodoList
mark s n (TodoList l) = TodoList $ map f l
  where
    f item = if item.id == n then item {status = s} else item

markDone :: TodoId -> TodoList -> TodoList
markDone = mark Done

markTodo :: TodoId -> TodoList -> TodoList
markTodo = mark Todo
