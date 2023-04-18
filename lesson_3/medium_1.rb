str = "The Flintstones Rock!"
# x = 0

# My solution
# while x <= 10 do
#   puts str.center(21+x)
#   x = x + 1
# end

# Given solution
# 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# puts "the value of 40 + 2 is " + (40 + 2).to_s

# def factors(number)
#   divisor = number
#   factors = []

#   if number == 0
#     puts "You entered zero. Enter a different number."
#   end

#  while divisor > 0 do
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end 

#   factors
# end

# p factors(8)

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end