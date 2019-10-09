fun add(x: Int): (Int) -> Int {
    return { y: Int -> x + y }
}

fun <T>each(list: Sequence<T>, fn: (T) -> Unit) {
    for (elem in list) {
        fn(elem);
    }
}

fun main() {
    // Expected Output: 3
    println(add(1)(2));
    // Expected Output:
    // 1
    // 2
    // 3
    each(arrayOf(1, 2, 3).asSequence(), { x: Int -> println(x) });
}
