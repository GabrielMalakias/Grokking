# Consider the input s = abcde and the words = ["a", "bb", "acd", "ace"]
# it should return 3 because there are three words which are a subsequence of abcde
#
#
# Approach use a stack to hold and discard letters keeping the order
# stack = a -> b -> c -> d -> e
# word = a
# pop the character and check if they match if they do continue
# if they dont pop the stack, if the stack is empty return false
# Do this for every word counting how many return true

require 'minitest/autorun'

class CheckSubSequence
  def call(s, words)
    stack = s.split('')
    words.select { |word| contained?(stack.dup, word) }.count
  end

  def contained?(stack, word)
    char_index = 0

    until stack.empty?
      character = stack.delete_at(0)

      char_index += 1 if character == word[char_index]
    end

    char_index >= word.length
  end
end

class CheckSubSequenceTest < Minitest::Test
  def setup
    @check_subsequence = CheckSubSequence.new
  end

  def test_happy_path_returns_true
    assert_equal 3, @check_subsequence.call('abcde', %w[a bb acd ace])
  end

  def test_calling_contained_when_stack_contains_word_returns_true
    assert_equal true, @check_subsequence.contained?(%w[a b c d e], 'ace')
  end

  def test_calling_contained_when_stack_does_not_contain_word_returns_false
    assert_equal false, @check_subsequence.contained?(%w[a b c d e], 'acce')
  end

  def test_calling_contained_when_stack_is_empty_returns_false
    assert_equal false, @check_subsequence.contained?([], 'aa')
  end
end
