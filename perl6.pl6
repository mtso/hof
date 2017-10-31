#function add
sub add(Int $x) {
  -> Int $y {$x + $y}
}

#function each
sub each($list,&function) {
  $list>>.&function
}

# testing function add
say add(1)(2);
# testing function each
each((1,2,3),&say);
