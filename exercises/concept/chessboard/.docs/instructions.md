# Instructions

As a chess enthusiast, you would like to write your own version of the game. Yes, there maybe plenty of implementations of chess available online already, but yours will be unique!

But before you can let your imagination run wild, you need to take care of the basics. Let's start by generating the board.

Each square of the chessboard is identified by a letter-number pair. The vertical columns of squares, called files, are labeled A through H. The horizontal rows of squares, called ranks, are numbered 1 to 8.

## 1. Define the rank range

Implement the `rank_range` method. It should return a range of integers, from 1 to 8.

```ruby
Chessboard.rank_range()
```

## 2. Define the file range

Implement the `file_range` method. It should return a range of strings, from the uppercase letter A, to the uppercase letter H.

```ruby
Chessboard.file_range()
```

## 3. Transform the rank range into a list of ranks

Implement the `ranks` method. It should return a list of integers, from 1 to 8. Do not write the list by hand, generate it from the range returned by the `rank_range` method.

```ruby
Chessboard.ranks()
# => [1, 2, 3, 4, 5, 6, 7, 8]
```

## 4. Transform the file range into a list of files

Implement the `files` method. It should return a list of letters (strings), from "A" to "H". Do not write the list by hand, generate it from the range returned by the `file_range` method.

```ruby
Chessboard.files()
# => ["A", "B", "C", "D", "E", "F", "G", "H"]
```
