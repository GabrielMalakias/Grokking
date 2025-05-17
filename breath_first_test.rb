require 'minitest/autorun'
require_relative 'breath_first'

class BreathFirstTest < Minitest::Test
  def setup
    @breath_first = BreathFirst.new
  end

  def test_when_there_is_a_mango_seller
    assert 'thom', @breath_first.call(build_graph, method(:mango_seller?))
  end

  def test_when_there_isnt_a_mango_seller
    assert 'thom', @breath_first.call(build_graph, method(:no_mango_seller))
  end

  private

  def mango_seller?(person)
    person[-1] == 'm'
  end

  def no_mango_seller(_person)
    false
  end

  def build_graph
    {}.tap do |graph|
      graph['you'] = %w[alice bob claire]
      graph['bob'] = %w[anuj peggy]
      graph['alice'] = %w[peggy]
      graph['claire'] = %w[thom jonny]
      graph['anuj'] = %w[]
      graph['peggy'] = %w[]
      graph['thom'] = %w[]
      graph['jonny'] = %w[]
    end
  end
end
