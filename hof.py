def add(x):
    "Return a function"
    return lambda y: x + y

def each(list, callback):
    "Execute callback function parameter on each item in the list"
    for item in list:
        callback(item)

add(1)(2)
each([1, 2, 3], print)
