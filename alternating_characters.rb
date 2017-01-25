require 'test/unit'

def solution(s)
  s = s.split ''
  i = 1
  del = 0

  while i < s.length
    if s[i] == s[i - 1]
      s.delete_at i
      i = 0
      del += 1
    end
    i += 1
  end

  del
end

# def solution(s)
#   previous = s[0]
#   count = 0
#
#   for i in (1..s.length - 1)
#     if previous == s[i]
#       count += 1
#     end
#     previous = s[i]
#   end
#
#   count
# end


class Tests < Test::Unit::TestCase

  def test_1
    assert_equal(solution('AAAA'), 3)
  end

  def test_2
    assert_equal(solution('BBBBB'), 4)
  end

  def test_3
    assert_equal(solution('ABABABAB'), 0)
  end

  def test_4
    assert_equal(solution('BABABA'), 0)
  end

  def test_5
    assert_equal(solution('AAABBB'), 4)
  end

  def test_6
    assert_equal(solution('BAAB'), 1)
  end

  def test_7
    assert_equal(solution('BAAB'), 1)
  end

end