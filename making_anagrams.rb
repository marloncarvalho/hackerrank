require  'test/unit'

def solution(a, b)
  c = (a.split('') + b.split('')).uniq
  t = 0
  c.each do |char|
    t += (a.count(char) - b.count(char)).abs
  end
  t
end


class Tests < Test::Unit::TestCase

  def test_1
    assert_equal(solution('cde','abc'), 4)
  end

  def test_2
    assert_equal(solution('aabbcc','aabcc'), 1)
  end

  def test_3
    assert_equal(solution('abcdefgz','aijklmnpq'), 15)
  end

end