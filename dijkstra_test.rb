require 'minitest/autorun'
require 'minitest/autorun'

class DijkstraTest < Minitest::Autorun
  private

  def build_weights_graph
    {}.tap do |graph|
      graph['start'] = { 'a' => 6, 'b' => 2 }
      graph['a'] = { 'end' => 1 }
      graph['b'] = { 'a' => 3, 'end' => 5 }
      graph['end'] = {}
    end
  end

  def build_costs_table
    {}.tap do |table|
      table['a'] = 6
      table['b'] = 2
      table['end'] = Float::INFINITY
    end
  end

  def parents_table
    {}.tap do |table|
      table['a'] = 'start'
      table['b'] = 'start'
      table['end'] = nil
    end
  end
end
