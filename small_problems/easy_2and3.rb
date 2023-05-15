# puts "Whose age do you want to know?"
# name = gets.chomp
# age = rand(20..200)

# if name.length > 0
#   puts "#{name} is #{age} years old!"
# else
#   puts "Teddy is #{age} years old!"
# end

# puts "Enter the length of the room in meters:"
# length_in_meters = gets.chomp.to_f

# puts "Enter the width of the room in meters:"
# width_in_meters = gets.chomp.to_f

# area_in_meters = (width_in_meters * length_in_meters).round(2)
# area_in_feet = (area_in_meters * 10.7639).round(2)

# puts "The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet)."

# SQFEET_TO_SQINCHES = 144

# puts "Enter the length of the room in feet:"
# length = gets.chomp.to_f

# puts "Enter the width of the room in feet:"
# width = gets.chomp.to_f

# area = (length * width).round(2)

# puts "The area of the room is #{area} square feet. (#{area*SQFEET_TO_SQINCHES} in square inches)"

# puts "What is the bill?"
# bill_amount = gets.chomp.to_f
# puts "What is the tip percentage?"
# tip_percentage = gets.chomp.to_f

# tip_amount = sprintf("%.2f",(bill_amount * (tip_percentage*0.01)))
# bill_with_tip = sprintf("%.2f",(bill_amount + tip_amount.to_f))

# puts "The tip is $#{tip_amount}"
# puts "The bill with tip is $#{bill_with_tip}"


#Retirement Calculator

# require 'time'

# puts "How old are you?"
# current_age = gets.chomp.to_i

# puts "What age do you want to retire?"
# retirement_age = gets.chomp.to_i

# retirement_age_difference = retirement_age - current_age
# current_year = Time.new.year
# retirement_year = current_year + retirement_age_difference

# puts "It's #{current_year}. You will retire in #{retirement_year}."
# puts "You only have #{retirement_age_difference} years of work to go!"

# puts "What is your name?"
# name = gets.chomp!

# if name[-1] == "!"
#   name = name.upcase.chop!
#   puts "HELLO #{name}! WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}"
# end

# for x in 1..99
#   if x.even? 
#     puts x
#   end
# end

# puts ">> Please enter an integer greater than 0:"
# number = gets.chomp.to_i
# num_array = (1..number).to_a

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp.downcase

# if operation == "s"
#   sum = 0
#   num_array.each { |a| sum += a }
#   puts ">> The sum of the integers between 1 and #{number} is #{sum}."

# elsif operation == "p"
#   product = 1
#   num_array.each { |a| product *= a }
#   puts ">> The product of the integers between 1 and #{number} is #{product}."

# else
#   puts ">> That is an unknown operation."
# end


# With #inject

# puts ">> Please enter an integer greater than 0:"
# number = gets.chomp.to_i
# num_array = (1..number).to_a

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp.downcase

# if operation == "s"
#   sum = num_array.inject(:+)
#   puts ">> The sum of the integers between 1 and #{number} is #{sum}."

# elsif operation == "p"
#   product = num_array.inject(:*)
#   puts ">> The product of the integers between 1 and #{number} is #{product}."

# else
#   puts ">> That is an unknown operation."
# end

# def negative(int)
#   if int > 0
#     return -int 
#   elsif int < 0
#     return int
#   else 
#     return 0
#   end
# end

def prompt(message)
  puts("==> #{message}")
end

# new_array = []

# prompt("Enter the 1st number:")
# first_num = gets.chomp.to_i
# new_array << first_num

# prompt("Enter the 2nd number:")
# second_num = gets.chomp.to_i
# new_array << second_num 

# prompt("Enter the 3rd number:")
# third_num = gets.chomp.to_i 
# new_array << third_num

# prompt("Enter the 4th number:")
# fourth_num = gets.chomp.to_i
# new_array << fourth_num

# prompt("Enter the 5th number:")
# fifth_num = gets.chomp.to_i
# new_array << fifth_num 

# prompt("Enter the last number:")
# last_num = gets.chomp.to_i

# if new_array.include?(last_num)
#   puts "The number #{last_num} appears in #{new_array}."
# else
#   puts "The number #{last_num} does not appear in #{new_array}."
# end

# prompt("Enter the first number:")
# num1 = gets.chomp.to_i
# prompt("Enter the second number:")
# num2 = gets.chomp.to_i

# puts "#{num1} + #{num2} = #{num1+num2}" 
# puts "#{num1} - #{num2} = #{num1 - num2}" 
# puts "#{num1} * #{num2} = #{num1 * num2}" 
# puts "#{num1} % #{num2} = #{num1%num2}" 
# puts "#{num1} ** #{num2} = #{num1**num2}" 

# prompt("Give me a string")
# string = gets.chomp

# string_no_spaces = string.delete(" ")
# puts "There are #{string_no_spaces.length} characters in `#{string}`."


# def multiply(num1,num2)
#   num1*num2
# end

# def power(num,power)
#   multiply(num,1)** power
# end

# p power(2,3)

# def xor?(condition1,condition2)
#   if condition1 == true 
#     if condition2 == true
#       return false
#     else
#       return true
#     end
#   elsif condition1 == false
#     if condition2 == true
#       return true
#     else
#       return false
#     end


#   end
# end


# puts xor?(5.even?, 4.even?) == true
# puts xor?(5.odd?, 4.odd?) == true
# puts xor?(5.odd?, 4.even?) == false
# puts xor?(5.even?, 4.odd?) == false

def palindrome?(obj)
  obj == obj.reverse 
end

    


# p palindrome?('madam') 
# # == true
# p palindrome?('Madam') 
# # == false          # (case matters)
# p palindrome?("madam i'm adam") 
# # == false # (all characters matter)
# p palindrome?('356653') 
# # == true

# p palindrome?([1,2,3]) 
# p palindrome?([1,2,3,3,2,1]) 

def real_palindrome?(object)
  object = object.downcase.delete('^a-z0-9')
  palindrome?(object)
end


def palindromic_number?(num)
  num = num.to_s
  palindrome?(num)
end

def uppercase?(string)
  string == string.upcase
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

