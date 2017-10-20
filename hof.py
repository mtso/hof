"""
Python 3.6.1
"""

def add(x):
  "Return a function"
  return lambda y: x + y

def each(items, callback):
  "Execute callback function parameter on each item in the items"
  for item in items:
    callback(item)

add(1)(2)
each([1, 2, 3], print)
