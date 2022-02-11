# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do |item|
    sum += item
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  arr.sort!
  return arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  dict = {}
  for i in arr
    if !dict.key?(n-i)
      dict[i] = n-i
    else
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s.downcase.match(/^[b-df-hj-np-tv-z]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.match(/[^0-1]/)
    return false
  end
  return s.match(/(00)$/) || s.match(/^0$/)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize isbn, price
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%0.2f" % [@price]
  end
  
  attr_reader :isbn
  attr_writer :isbn
  attr_reader :price
  attr_writer :price
end
