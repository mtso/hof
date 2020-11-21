/**
 * Adds two numbers `x` and `y`.
 *
 * @param x The first number
 * @returns a function that returns the sum of the two numbers
 */
function add(x: number) {
    return function(y: number) {
        return x + y
    }
}

/**
 * A type that described a callback function that produces
 * a side-effect
 */
type Callback<T> = (v: T) => void

/**
 * Takes a list and a callback functions, and calls the
 * callback on every list element.
 *
 * @param list A list of elements of type `T`
 * @param callback A function that takes a parameter of
 * type `T`
 */
function each<T>(list: T[] | ReadonlyArray<T>, callback: Callback<T>) {
    for (let i = 0; i < list.length; i++) {
        callback(list[i])
    }
}

// Examples of using hof in TypeScript

add(1) // => (y: number) => 1 + y
// add(1)("a") // => Argument of type 'string' is not assignable to parameter of type 'number'.
add(1)(2) // => 3

each([1, 2, 3], console.log) // => Logs to the console 1, 2 and 3
/* IIFE/explicit form */ // each([1, 2, 3, 4], element => console.log(element))
