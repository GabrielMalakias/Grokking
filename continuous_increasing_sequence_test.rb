require 'minitest/autorun'

class ContinuousIncreasingSequence
  def call(array)
    current_count = 0
    largest_continous = 1

    array.each_with_index do |value, index|
      if index == 0
        current_count += 1
        next
      end

      if array[index - 1] < value
        current_count += 1
      else
        largest_continous = current_count if largest_continous < current_count
        current_count = 1
      end
    end

    largest_continous
  end
end

class ContinuousIncreasingSequenceTest < Minitest::Test
  def setup
    @continuous = ContinuousIncreasingSequence.new
  end

  def test_that_happy_path_works
    assert_equal 3, @continuous.call([1, 3, 5, 4, 7])
  end

  def test_not_increasing_returns_one
    assert_equal 1, @continuous.call([2, 2, 2, 2, 2])
  end
end
