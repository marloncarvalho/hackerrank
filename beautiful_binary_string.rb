require 'test/unit'

# def solution(s)
#   s.gsub! /010/, 'b'
#   s.gsub! /[01]/, ''
#   s.length
# end

def solution(s)
  s.gsub! /010/, 'b'
  s.count('b')
end

class Tests < Test::Unit::TestCase

  def test_simple0
    assert_equal(solution('0101010'), 2)
  end

  def test_simple1
    assert_equal(solution('01100'), 0)
  end

  def test_simple2
    assert_equal(solution('0100101010'), 3)
  end

  def test_simple3
    assert_equal(solution('0100101010100010110100100110110100011100111110101001011001110111110000101011011111011001111100011101'), 10)
  end

end