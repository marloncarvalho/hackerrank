require  'test/unit'
#
# def solution(s)
#   count = 0
#   sos_count = s.length / 3
#
#   for i in (0..sos_count - 1)
#     sos = s[3 * i..(3 * i) + 2]
#     count += 1 if sos[0] != 'S'
#     count += 1 if sos[1] != 'O'
#     count += 1 if sos[2] != 'S'
#   end
#
#   count
# end

def solution(s)
  t = 0
  (s.length / 3).times do |i|
    slice = s[(3 * i)..(3 * i + 2)]
    t += 1 if slice[0] != 'S'
    t += 1 if slice[1] != 'O'
    t += 1 if slice[2] != 'S'
  end
  t
end

class Tests < Test::Unit::TestCase

  def test_1
    assert_equal(solution('SOSSPSSQSSOR'), 3)
  end

  def test_2
    assert_equal(solution('SOSSOT'), 1)
  end

  def test_3
    assert_equal(solution('SOSSOS'), 0)
  end

  def test_4
    assert_equal(solution('SSS'), 1)
  end

  def test_5
    assert_equal(solution('XXXXXX'), 6)
  end

  def test_6
    assert_equal(solution('SSSSSS'), 2)
  end

end