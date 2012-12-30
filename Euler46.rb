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
    @odd_composites.each do |odd_c|
      found = false
      @double_square.each do |double_square|
        if found == false
          @primes.each do |prime|
             if prime + double_square == odd_c
               found = true 
               break
             end
          end
        end
      end
      return odd_c if found == false
    end
    return false
  end
  
  def _square_processing
    
  end
end