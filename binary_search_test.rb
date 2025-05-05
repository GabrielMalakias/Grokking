require_relative 'binary_search'

require 'minitest/autorun'

class BinarySearchTest < Minitest::Test
  def setup
    @binary_search = BinarySearch.new
  end

  def test_when_target_within_the_list
    items = (0..100).to_a
    assert_equal 10, @binary_search.call(items, 0, items.size - 1, 10)
  end

  def test_when_target_within_the_list_at_end
    items = (0..100).to_a
    assert_equal 100, @binary_search.call(items, 0, items.size, 100)
  end

  def test_when_target_within_the_list_in_the_beginning
    items = (0..100).to_a
    assert_equal 0, @binary_search.call(items, 0, items.size, 0)
  end

  def test_when_target_is_not_in_the_list
    items = (0..100).to_a
    assert_nil @binary_search.call(items, 0, items.size - 1, 1000)
  end
end
