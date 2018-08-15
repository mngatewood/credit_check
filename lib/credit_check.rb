require './credit_card'
require 'pry'

puts "Welcome to Credit Check."
print "Enter the credit card number: "

def credit_check_response

  card_number = gets.strip.to_s
  credit_card = CreditCard.new(card_number,0)
  valid = credit_card.is_valid?
  check_sum = credit_card.check_sum

  if valid
    puts "The credit card number #{card_number} is valid."
  else
    puts "The credit card number #{card_number} is invalid."
    puts "The check sum digit is #{check_sum}."
  end

end
  
credit_check_response