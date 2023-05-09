def repeat(str,num)
  num.times { p str }
end

repeat('Hello', 3)

def is_odd?(num1)
  num1%2 == 1
end


# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true


def stringy(int) 
  numbers = []

  int.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end


# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'


# def calculate_bonus(int,x)
#   if x == true 
#     int/2
#   else 
#     0
#   end
# end

def calculate_bonus(salary,bonus)
  bonus ? (salary/2) : 0
end



puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

def print_in_box(str)
hyphens = '-' * (str.length*2)
blanks = " " * (hyphens.length)

puts "
+#{hyphens}+
|#{blanks}|
|#{str.center(hyphens.length)}|
|#{blanks}|
+#{hyphens}+"

end

print_in_box('Kendall Holland')


def triangle(num)
  num = num+1
  num.times do |index|
    star_count = "*" * index
    puts star_count.rjust(num)
  end
end


triangle(9)

# puts "Enter a noun:"
# noun = gets.chomp

# puts "Enter a verb:"
# verb = gets.chomp

# puts "Enter an adjective:"
# adjective = gets.chomp

# puts "Enter an adverb:"
# adverb = gets.chomp

# puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"



# def reversed_number(num) 
#   num.to_s.reverse.to_i
# end

# puts reversed_number(12345) #== 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

def center_of(str)
  if str.length.even?
    center1 =  str.length/2 -1
    center2 =  center1 + 1
    return str[center1..center2]
  else 
    center = (str.length/2).floor
    return str[center]
  end
end



# puts center_of('I love ruby')
# #  == 'e'
# puts center_of('Launch School') 
# == ' '
puts center_of('Launch')
#  == 'un'
puts center_of('Launchschool') 
puts center_of('x') 