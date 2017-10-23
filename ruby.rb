def add(x)
  lambda { |y| x + y }
end

def each(list, callback)
  list.each do |item|
    callback.call(item)
  end
end

# testing add function
curried_sum = method(:add).to_proc.curry
puts curried_sum[5][10] # => 15

# testing each function
test_list = [1,2,3]

def putting(item)
  puts item
end

each(test_list, method(:putting))
