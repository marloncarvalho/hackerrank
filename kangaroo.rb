require  'test/unit'

def solution(x1, v1, x2, v2)
  return 'NO' if v1 <= v2
  return 'YES' if v1 != v2 && ((x2 - x1) % (v1 - v2) == 0)
  'NO'
end

class Tests < Test::Unit::TestCase

  def test_1
    assert_equal(solution(0,2,5,3), 'NO')
  end

  def test_2
    assert_equal(solution(0,3,4,2), 'YES')
  end

  def test_3
    assert_equal(solution(21,6,47,3), 'NO')
  end

  def test_4
    assert_equal(solution(43,2,70,2), 'NO')
  end

end
