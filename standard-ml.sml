fun add (x : int) (y : int) : int =
  x + y

fun each (xs : 'a list) (f : 'a -> 'b) : 'b list =
  case xs of
    [] => []
  | x :: xs' => f x :: each xs' f

val 3 = add 1 2
val [2,3,4] = each [1,2,3] (fn x => x + 1)
