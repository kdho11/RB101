VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts("=> #{message}")
end


def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'paper' && second == 'rock') || 
  (first == 'scissors' && second == 'paper')  
end


def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else 
    prompt("It's a tie!")
  end
end

loop do
  player = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player = gets.chomp

    if VALID_CHOICES.include?(player)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer = VALID_CHOICES.sample

  prompt("You chose: #{player}; Computer chose: #{computer}")

  display_results(player, computer)

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
