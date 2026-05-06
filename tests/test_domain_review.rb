require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = VertexParseYamlMark::DomainReview.new(signal: 46, slack: 22, drag: 16, confidence: 52)
    assert_equal 118, VertexParseYamlMark.domain_review_score(item)
    assert_equal "watch", VertexParseYamlMark.domain_review_lane(item)
  end
end
