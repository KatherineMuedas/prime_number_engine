require 'minitest/autorun'
require_relative 'prime_number_engine'

describe PrimeNumberEngine do
  # it 'makes a list of all integers <=30 and greater than 1' do
  #   pn = PrimeNumberEngine.new(30)
  #   result = pn.number_list
  #   expected = (2..30).to_a
  #   assert_equal expected, result
  # end

  it 'should cross out multiples of 2' do
    pn = PrimeNumberEngine.new(30)
    result = pn.cross_out_multiple_of_two
    expected = [2,3,5,7,9,11,13,15,17,19,21,23,25,27,29]
    assert_equal expected, result
  end

  it 'should cross out multiples of 2 and 3' do
    pn = PrimeNumberEngine.new(30)
    result = pn.cross_out_multiple_of_three
    expected = [2,3,5,7,11,13,17,19,23,25,29]
    assert_equal expected, result
  end

  it 'should cross out multiple of 2, 3 and 5' do
    pn = PrimeNumberEngine.new(30)
    result =  pn.cross_out_multiple_of_five
    expected = [2,3,5,7,11,13,17,19,23,29]
    assert_equal expected, result
  end
end

