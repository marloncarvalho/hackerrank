require 'test/unit'

#
# def solution(s)
#   funny = 'Funny'
#   r = s.reverse.codepoints
#   s = s.codepoints
#
#   for i in (1..s.length - 1)
#     if (s[i] - s[i - 1]).abs != (r[i] - r[i - 1]).abs
#       funny = 'Not Funny'
#       break
#     end
#   end
#
#   funny
# end

def solution(s)
  result = 'Funny'
  s = s.codepoints
  r = s.reverse

  for i in (1..s.length - 1)
    sum1 = (s[i] - s[i-1]).abs
    sum2 = (r[i]- r[i-1]).abs
    if sum1 != sum2
      result = 'Not Funny'
      break
    end
  end

  result
end

class Tests < Test::Unit::TestCase

  def test_1
    assert_equal(solution('acxz'), 'Funny')
  end

  def test_2
    assert_equal(solution('bcxz'), 'Not Funny')
  end

end