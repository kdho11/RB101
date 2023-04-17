# advice = "Few things in life are as important as house training your pet dinosaur."

# advice_array = advice.split(" ") 

# advice_array[6] = "urgent"

# advice = advice_array.join(" ")

# puts advice


# lol OR
# advice = "Few things in life are as important as house training your pet dinosaur."

# advice.gsub!('important', 'urgent')

# puts advice

# puts (10...100).include?(42)

famous_words = "seven years ago..."

# puts "Four score and " << famous_words
# famous_words = "Four score and " + famous_words

# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# p flintstones.flatten!

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney = flintstones.select { |x,v| x == "Barney"}
p barney.to_a.flatten!

