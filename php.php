<?php

/**
 * Requires PHP 7.1 or greater.
 */

namespace HOF;

// Returns a function.
function add(int $x): callable {
    return function (int $y) use ($x): int {
        return $x + $y;
    };
}

// Accepts a function.
function each(iterable $list, callable $callback): void {
    foreach ($list as $element) {
        $callback($element);
    }
}

// Examples.
add(1)(2);
each([1, 2, 3], 'var_dump');
