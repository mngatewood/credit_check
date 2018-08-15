require 'pry'

class CreditCard

  attr_reader :card_number,
              :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  # Double every other digit beginning with the first
  def every_other_doubled
    card_number.chars.map.with_index do |x, i|
      if i.odd?
        x.to_i
      else
        x.to_i * 2
      end
    end
  end

  # Sum the digits of every product greater than 9
  def sum_double_digits
    every_other_doubled.map do |x|
      if x > 9
        x.to_s.chars[0].to_i + x.to_s.chars[1].to_i
      else
        x
      end
    end
  end

  # Sum all numbers after double-digits are summed
  def sum_all_doubled_numbers
    sum_double_digits.sum
  end

  # Validate that sum is divisible by 10
  def is_valid?
    sum_all_doubled_numbers % 10 == 0
  end

  # Return last four digits of card number
  def last_four
    "**** **** **** #{card_number.to_s[-4..-1]}"
  end

  # Calculate check sum digit
  def check_sum
    account_number = card_number[0..-2]
    10 - (account_number.to_i % 10)
  end
  
end

