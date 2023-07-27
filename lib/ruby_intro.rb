# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum(array)
  max1 = 0
  max2 = 0
  sum = 0

  if array.length > 1
    sorted_array = array.sort
    max1 = sorted_array[-1]
    max2 = sorted_array[-2]
    sum = max1 + max2
    return sum
  elsif array.length == 1
    return array[0]
  else
    return 0
  end
end


def sum_to_n?(arr, n)
  result = false

  if arr.length > 1
    for i in 1..arr.length - 1
      for j in 0..i - 1
        if arr[j] + arr[i] == n
          result = true
          break
        end
      end
    end
  end

  return result
end

#------------------------------------------------------------------
# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  /^[^aeiou\W]/i.match(s) != nil
end


def binary_multiple_of_4?(s)
  #Regular expression to check if the string is a valid binary number (contain only 0s and 1s)
  valid_binary_regex = /^[01]+$/

  #Regular expression to check if the binary number is a multiple of 4 (ends with "00")
  binary_multiple_of_4_regex = /^(?:[01]*00|0)$/

  #Check if the string matches the valid binary regex and is a multiple pf 4
  return !!(s =~ valid_binary_regex) && !!(s =~ binary_multiple_of_4_regex)
end

#--------------------------------------------------------

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
    attr_accessor :price


    def initialize(isbn, price)
      if valid_isbn?(isbn)
        @isbn = isbn
      else
        raise ArgumentError, "Invalid ISBN number: #{isbn}"
      end
      if valid_price?(price)
        @price = price
      else
        raise ArgumentError, "Invalid price: #{price}"
      end
    end


    def price_as_string
      "$#{'%.2f' % @price}"
    end


    private


    def valid_isbn?(isbn)
      !isbn.nil? && !isbn.empty?
    end


    def valid_price?(price)
      price.is_a?(Numeric) && price > 0
    end

  
end
