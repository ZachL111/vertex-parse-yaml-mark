require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = VertexParseYamlMark::Signal.new(demand: 65, capacity: 89, latency: 12, risk: 6, weight: 4)
    assert_equal 159, VertexParseYamlMark.score(signal_case_1)
    assert_equal 'review', VertexParseYamlMark.classify(signal_case_1)
    signal_case_2 = VertexParseYamlMark::Signal.new(demand: 65, capacity: 73, latency: 13, risk: 22, weight: 7)
    assert_equal 84, VertexParseYamlMark.score(signal_case_2)
    assert_equal 'review', VertexParseYamlMark.classify(signal_case_2)
    signal_case_3 = VertexParseYamlMark::Signal.new(demand: 74, capacity: 79, latency: 15, risk: 8, weight: 4)
    assert_equal 147, VertexParseYamlMark.score(signal_case_3)
    assert_equal 'review', VertexParseYamlMark.classify(signal_case_3)
  end
end
