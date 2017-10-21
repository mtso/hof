def add(x):
    return lambda y: x + y

def each(items, callback):
    for item in items: callback(item)

add(1)(2)

def log(n): print n
each([1, 2, 3], log)
