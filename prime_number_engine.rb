class PrimeNumberEngine
  def initialize(limit)
    @limit = limit
  end

  def number_list
    (2..@limit).to_a
  end

  def cross_out_multiple_of_two
    number_list.reject { |n| n % 2 == 0 unless n == 2}
  end

  def cross_out_multiple_of_three
    list = cross_out_multiple_of_two
    list.reject { |n| n % 3 == 0 unless n == 3 }
  end

  def cross_out_multiple_of_five
    list = cross_out_multiple_of_three
    list.reject { |n| n % 5 == 0 unless n == 5 }
  end
end
