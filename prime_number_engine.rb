class PrimeNumberEngine
  def initialize(limit)
    @limit = limit
    @list = (2..@limit).to_a
  end

  def cross_out_multiple_of_two
    cross_out_multiples_of(2)
  end

  def cross_out_multiple_of_three
    @list = cross_out_multiple_of_two
    cross_out_multiples_of(3)
  end

  def cross_out_multiple_of_five
    @list = cross_out_multiple_of_three
    cross_out_multiples_of(5)
  end

  private

  def cross_out_multiples_of(number)
    @list.reject {|n| n % number == 0 unless n == number}
  end
end
