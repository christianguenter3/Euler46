require 'Prime'
class Euler46
  
  def get_first_non_goldbach(limit)
    @odd_composites = get_odd_composite_upto(limit)
    @primes = get_prime_upto(limit)
    @double_square = get_double_square_upto(limit)
    return _calculate
  end
  
  def get_odd_composite_upto(limit)
    odd_composite, primes = [], get_prime_upto(limit)    
    2.upto(limit) { |x| odd_composite << x if x.odd? && primes.include?(x) == false }
    return odd_composite
  end
  
  def get_prime_upto(limit)
    Prime.each(limit).to_a
  end

  def get_double_square_upto(limit)
    double_square, double_squares, i = 0, [], 1
    while double_square <= limit
      double_square = 2 * i * i
      double_squares << double_square
      i += 1      
    end
    return double_squares
  end
  
private
  def _calculate
    @odd_composites.each { |odd_c| return odd_c if _square_processing(odd_c) == false}
    return false
  end
  
  def _square_processing(odd_composite)
    found = false
    @double_square.each { |double_square| found = _primes_processing(odd_composite, double_square) if found == false }
    return found
  end
  
  def _primes_processing(odd_composite, double_square)
    @primes.each { |prime| return true if prime + double_square == odd_composite }
    return false
  end
end

