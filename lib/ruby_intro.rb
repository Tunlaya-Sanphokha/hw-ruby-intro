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

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
