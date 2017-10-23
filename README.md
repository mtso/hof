# Higher-Order Functions

Higher-order functions in different languages. Inspired by: [FizzBuzz](https://github.com/zenware/FizzBuzz) and [hello-world](https://github.com/leachim6/hello-world).

Higher-order functions (HOF) are functions that satisfy one or both rules:
- Returns a function.
- Take one or more function parameters.

## Spec

The two example higher-order functions are:

### `add`

`add` takes an integer as a parameter and returns a second function that takes an integer, which returns the overall result.

##### type signature
```
function(int) -> function(int) -> int
```

### `each`
`each` is a void function takes a list as its first parameter and a function as its second parameter. It then iterates over the given list passing in each element into the function.

##### type signature
```
function([int], function(int) -> void) -> void
```

#### Example Usage

Show how the function is used by calling them in the program's entry point. For example:
```js
const three = add(1)(2);
each([1, 2, 3], console.log);
```
