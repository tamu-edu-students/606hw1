# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sumValue = 0
  arr.each { |x| sumValue += x }
  return sumValue 
end



def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    if arr[0] > arr[1]
      first = arr[0]
      second = arr[1]
    else 
      first = arr[1]
      second = arr[0]
    end

    

    arr[2..].each do |e|
      if e >= first
        second = first 
        first = e 
      elsif e > second 
        second = e 
      end
    end

    return first + second 
  end

end

# print max_2_sum([1, -2, -3, -4, -5])
# print (max_2_sum([1, 2, 3, 4, 5]))
# print (max_2_sum([1, 2, 3, 3]))
# print max_2_sum([])
# print max_2_sum([1])
# print (max_2_sum([1, 2, 3, 4, 5])).class 


def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if arr.length == 0 or arr.length == 1
    return false 
  else
    for i in 0...arr.length do 
      for j in i+1...arr.length do 
        if arr[i] + arr[j] == number 
          return true 
        end
      end
    end
    return false 
  end
end



# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name 
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string == ''
    return false 
  end

  if string[0].match?(/[[:alpha:]]/)
    if ['a','e','i','o','u','A','E','I','O','U'].include? string[0]
      return false 
    else 
      return true 
    end
  else 
    return false 
  end 
  return false 
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length == 0
    return false 
  end

  for i in 0...string.length
    if (string[i] != "0") and (string[i] != "1")
      
      return false 
    end
  end

  number = 0
  for i in 0...string.length 
    number = number * 2 + string[i].to_i 
    
  end
  if number % 4 == 0
    return true 
  end 
  
  return false 

end


# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  # String isbn 
  # Float price 
  attr_reader :isbn, :price # getter
  attr_writer :isbn, :price # setter

  def initialize(isbn, price)
    if isbn == '' or price <= 0
      raise ArgumentError, 'isbn is empty or price <= 0'
    else
      @isbn = isbn
      @price = price 
    end
  end

  def price_as_string

    return '$' + '%.2f' % @price 

  end

end

# book = BookInStock.new('sddsd', 33.8)
# print book.price_as_string
