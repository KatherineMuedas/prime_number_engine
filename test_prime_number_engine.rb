require 'minitest/autorun'
require_relative 'prime_number_engine'

describe PrimeNumberEngine do
  it 'makes a list of all integers <=30 and greater than 1' do
    pn = PrimeNumberEngine.new(30)
    result = pn.number_list
    expected = (2..30).to_a
    assert_equal expected, result
  end
end

