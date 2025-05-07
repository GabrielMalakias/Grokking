require_relative 'quicksort'
require 'minitest/autorun'

class QuicksortTest < Minitest::Test
  def setup
    @quicksort = Quicksort.new
  end

  def test_sorting_works_as_expected
    assert_equal (0..100).to_a, @quicksort.call((0..100).to_a.shuffle)
  end
end
