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

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# mess_with_demographics(munsters)

# p munsters

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end