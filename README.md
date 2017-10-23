# Higher-Order Functions

Higher-order functions in different languages.

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
`each` is a void function takes a list as its first parameter and a function as its second parameter. It then iterates over the given function passing in each element of the list.

##### type signature
```
function([int], function(int) -> void) -> void
```
