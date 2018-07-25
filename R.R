#R version 3.3.2 
# Runnable snippet: http://rextester.com/IQSY32589

add <- function(x) {
    function(y) { x + y }
}

each <- function(iter, fn) {
    for (i in iter) {
        fn(i)
    }
}

# Example of calling the functions

add(1)(2)
each(1:10, print)
