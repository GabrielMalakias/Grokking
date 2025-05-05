require_relative 'factorial'
require 'minitest/autorun'

class FactorialTest < Minitest::Test
  def setup
    @factorial = Factorial.new
  end

  def test_5_factorial_is_correct
    assert_equal 120, @factorial.call(5)
  end
end
