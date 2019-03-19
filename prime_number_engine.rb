class PrimeNumberEngine
  def initialize(limit)
    @limit = limit
  end

  def number_list
    (2..@limit).to_a
  end
end
