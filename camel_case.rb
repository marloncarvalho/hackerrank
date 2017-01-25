require  'test/unit'

# def solution(s)
#   return 0 if s.empty?
#
#   total = 0
#   ('A'..'Z').to_a.each do |c|
#     total += s.count(c)
#   end
#
#   total + 1
# end

def solution(s)
  return 0 if s.empty?
  t = 0
  ('A'..'Z').to_a.each do |c|
    t += s.count(c)
  end
  t + 1
end

class Tests < Test::Unit::TestCase

  def test_simple
    assert_equal(solution('saveChangesInTheEditor'), 5)
  end

  def test_empty_string
    assert_equal(solution(''), 0)
  end

  def test_one_word
    assert_equal(solution('word'), 1)
  end

  def test_two_words
    assert_equal(solution('twoWords'), 2)
  end

end