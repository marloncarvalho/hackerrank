require 'test/unit'


def solution(s)
  return -1 if s.length.odd?

  r = 0
  p1 = s[0..(s.length / 2 - 1)]
  p2 = s[(s.length / 2)..-1]

  ('a'..'z').to_a.each do |c|
    r += (p1.count(c) - p2.count(c)).abs
  end

  r / 2
end

class Tests < Test::Unit::TestCase

  # def test_1
  #   assert_equal(solution('aaabbb'), 3)
  # end
  #
  # def test_2
  #   assert_equal(solution('ab'), 1)
  # end
  #
  # def test_3
  #   assert_equal(solution('abc'), -1)
  # end
  #
  # def test_4
  #   assert_equal(solution('mnop'), 2)
  # end
  #
  # def test_5
  #   assert_equal(solution('xyyx'), 0)
  # end
  #
  # def test_6
  #   assert_equal(solution('xaxbbbxx'), 1)
  # end

  # hhpddlnnsjfoyxpci (17) ioigvjqzfbpllssuj (17)
  def test_7
    assert_equal(solution('hhpddlnnsjfoyxpciioigvjqzfbpllssuj'), 10)
  end

end
