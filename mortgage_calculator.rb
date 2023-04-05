# require = "pry" 

def prompt(message)
    puts("=> #{message}")
  end
  
# def valid_number?(num)
#       num == num.to_i.to_s 
# end
  
# def monthly(loan_amount, apr, loan_in_months)
#     interest_rate = (apr * 0.01) / 12
#     monthly_payment = loan_amount * (interest_rate / (1 - (1 + interest_rate)**(-loan_in_months)))
# end
loop do
  prompt("Welcome to the mortgage calculator!")
  prompt("--------------------------------")
  prompt("What is the amount of your loan?")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp
      if loan_amount.empty? || loan_amount.to_f < 0
        prompt("Please enter a positive number!")
      else
        break
    end
  end

  prompt("What is the APR of your loan?")
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  apr = ''
  loop do
    apr = gets.chomp
    if apr.empty? || apr.to_f < 0 
      prompt("Please enter a positive number!")
    else
      break
    end
  end

  prompt("How many years long is your loan?")

  loan_duration = ''
  loop do
    loan_duration = gets.chomp
    if loan_duration.empty? || loan_duration.to_f < 0
      prompt("Please enter a positive number!")
    else
      break
    end
  end

  annual_interest_rate = apr.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = loan_duration.to_i * 12
  
  monthly_payment = loan_amount.to_f * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is #{monthly_payment}!")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets().chomp()
  break unless answer.downcase.start_with?('y')
	

end


# apr = 0.07
# interest_rate = apr / 12
# loan_duration = 7
# loan_in_months = loan_duration * 12 
# loan_amount = 200_000




