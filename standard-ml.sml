fun add (x : int) (y : int) : int =
  x + y

fun each (xs : 'a list) (f : 'a -> 'b) : 'b list =
  case xs of
    [] => []
  | x :: xs' => f x :: each xs' f
