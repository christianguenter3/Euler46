require_relative 'Euler46'
require 'test/unit'

class TestEuler46 < Test::Unit::TestCase
  
  COMP_TEST_CASES = { 33 => [9,15,21,25,27,33] }
  
  def test_get_odd_composite_upto
    COMP_TEST_CASES.each { |input, output| assert_equal(output,@euler46.get_odd_composite_upto(input))}
  end
  
  PRIME_TEST_CASES = { 30 => [2,3,5,7,11,13,17,19,23,29] }
  
  def test_get_prime_upto
    PRIME_TEST_CASES.each { |input, output| assert_equal(output,@euler46.get_prime_upto(input))}
  end
  
  DOUBLE_SQUARE_TEST_CASES = { 30 => [2,8,18,32]}
  
  def test_get_double_square_upto
    DOUBLE_SQUARE_TEST_CASES.each { |input, output| assert_equal(output,@euler46.get_double_square_upto(input))}
  end
  
  def test_get_first_non_goldbach
    assert_equal(5777,@euler46.get_first_non_goldbach(10_000))
  end
  
  def setup
    @euler46 = Euler46.new
  end
end
