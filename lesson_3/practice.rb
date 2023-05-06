# def create_phone_number(numbers)
#   nums1 = numbers.slice(0,3).join()
#   nums2 = numbers.slice(4,3).join()
#   nums3 = numbers.slice(7,4).join()
#   return "(#{nums1}) #{nums2}-#{nums3}"
# end

# create_phone_number([1,2,3,4,5,6,7,8,9,1])

# def is_isogram(string)
#   unique = string.chars
#   unique.uniq!
  
#   if string.chars == unique
#     return true
#   else
#     return false
#   end  
# end

# puts is_isogram("Dermatoglyphics")

# def printer_error(s)
#   counter = 0
# 	s_arr = s.each_char.to_a 
#   s_arr.each do |x|
#     if ('a'..'m').include?(x)
#       true
#     else
#       counter += 1
#     end
#   end
#   p "#{counter}/#{s.length}"
# end

# s = "aaabbbbhaijjjmxxx"
# printer_error(s)


def disemvowel(str)
  # vowels = ["a","e","i","o","u"]
  # str_array = str.each_char.to_a
  
  # str_array.each do |x|
  str.gsub(/[aeiou]/) {|item| x}
  puts str
end

str = "This website is for losers LOL!"