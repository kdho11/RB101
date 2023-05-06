#1
# Locate the ruby documentation for methods File::path and File#path. How are they different?

# File::path: Returns the string representation of the given path. 
#This is a class method

# File#path Returns the pathname used to create file as a string. Does not normalize the name.
#This is an instance method

#2
require 'date'

puts Date.civil #-4712-01-01
puts Date.civil(2016) #2016-01-01
puts Date.civil(2016, 5) #2016-05-01
puts Date.civil(2016, 5, 13) #2016-05-13

puts Date.today


#3
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

#4
a = [1, 4, 8, 11, 15, 19]
p a.bsearch {|x| x > 8 }

#5
a = %w(a b c d e)
# puts a.fetch(7) #`fetch': index 7 outside of array bounds:
puts a.fetch(7, 'beats me') #'beats me'
puts a.fetch(7) { |index| index**2 } #49

#6
5.step(to: 10, by: 3) { |value| puts value }

#7 parent class
s = 'abc'
puts s.public_methods(false).inspect

#8
a = [5, 9, 3, 11]
puts a.min(2)

