require  'test/unit'

# def solution(s)
#   return 0 if s == s.reverse
#
#   b = 0
#   e = s.length - 1
#   op = 0
#   limit = s.length / 2
#
#   while b != limit
#     op += (s[e].ord - s[b].ord).abs if s[b] != s[e]
#     b += 1
#     e -= 1
#   end
#
#   op
# end

# cba
# abc
def solution(s)
  s = s.codepoints
  r = s.reverse
  ops = 0
  for i in 0..s.length - 1
    if s[i] != r[i]
      ops += (s[i] - r[i]).abs
      break if s == s.reverse
    end
  end

  ops / 2
end

class Tests < Test::Unit::TestCase

  def test_1
    assert_equal(solution('abc'), 2)
  end

  def test_2
    assert_equal(solution('abcba'), 0)
  end

  def test_3
    assert_equal(solution('abcd'), 4)
  end

  def test_4
    assert_equal(solution('cba'), 2)
  end

  def test_5
    assert_equal(solution("b#{'a' * 1000000}b#{'a' * 1000000}bz"), 26)
  end

end