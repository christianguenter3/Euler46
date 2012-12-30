require 'Prime'
class Euler46
  
  def get_first_non_goldbach(limit)
    @odd_composites = get_odd_composite_upto(limit)
    @primes = get_prime_upto(limit)
    @double_squre = get_double_square_upto(limit)
    calculate
  end
  
  def get_odd_composite_upto(limit)
    odd_composite = []
    primes = get_prime_upto(limit)
    
    2.upto(limit) do |x|
      odd_composite << x if x.odd? && primes.include?(x) == false 
    end
    return odd_composite
  end
  
  def get_prime_upto(limit)
    Prime.each(limit).to_a
  end

  def get_double_square_upto(limit)
    double_square = 0
    double_squares = []
    i = 1
    while double_square <= limit
      double_square = 2 * i * i
      double_squares << double_square
      i += 1      
    end
    return double_squares
  end
  
  def calculate
    
  end
end