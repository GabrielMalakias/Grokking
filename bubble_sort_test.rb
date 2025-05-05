require_relative 'bubble_sort'
require 'minitest/autorun'

class BubbleSortTest < Minitest::Test
  def setup
    @bubble_sort = BubbleSort.new
  end

  def test_when_array_of_order_make_it_sorted
    assert_equal (0...100).to_a, @bubble_sort.call((0...100).to_a.shuffle)
  end
end
