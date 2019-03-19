class PrimeNumberEngine
  def initialize(limit)
    @limit = limit
  end

  def number_list
    (2..@limit).to_a
  end

  def cross_out_multiple_of_two
    number_list.reject { |n| n % 2 == 0 if n != 2}
  end
end
