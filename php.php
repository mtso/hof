<?php

// Returns a function
function add($x){
    return function($y) use($x){
        return $x + $y;
    };
}

// Takes a callback function
function _each($items, $callback){
    foreach ($items as $item){
        $callback($item);
    }
}

// Example of calling the functions

print(add(1)(2) . "\n");

function my_callback($v){
    echo $v;
}
_each(array(1,2,3), 'my_callback');