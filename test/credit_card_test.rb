require 'minitest/autorun'
require 'minitest/pride'
require '../lib/credit_card'

class CreditCardTest < Minitest::Test
  def test_it_exists
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_instance_of CreditCard, credit_card
  end

  def test_it_has_a_card_number
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal "5541808923795240", credit_card.card_number
  end

  def test_it_has_a_limit
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal 15000, credit_card.limit
  end

  def test_it_has_a_last_four
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal "**** **** **** 5240", credit_card.last_four
  end

  def test_it_knows_when_a_credit_card_is_valid
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal true, credit_card.is_valid?
  end

  def test_it_knows_when_a_credit_card_is_invalid
    credit_card = CreditCard.new("5541801923795240", 15000)
    assert_equal false, credit_card.is_valid?
  end

end
