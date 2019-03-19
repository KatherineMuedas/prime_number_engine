class PrimeNumberEngine
  def initialize(limit)
    @limit = limit
    @list = (2..@limit).to_a
  end

  def calculate
    @list.each do |n|
      unless n >= Math.sqrt(@limit)
        cross_out_multiples_of(n)
      end
    end
  end

  private

  def cross_out_multiples_of(number)
    @list.reject! {|n| n % number == 0 unless n == number}
  end
end
