// Add returns a one parameter function
// that returns the overall result.
func add(_ x: Int) -> (Int) -> Int {
    return { (y: Int) in
        return x + y
    }
}

// let add = { (x: Int) in
//     return { (y: Int) in
//         return x + y
//     }
// }

// Each takes a list and a callback function
// to execute on each item of the list.
func each<T>(_ list: [T], _ callback: (T) -> ()) {
    for item in list {
        callback(item)
    }
}

print(add(1)(2))
each([1, 2, 3], { (n) in print(n) })
