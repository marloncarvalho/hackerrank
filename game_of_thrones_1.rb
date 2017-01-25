require  'test/unit'

def solution(s)
  return 'YES' if s == s.reverse

  odds = false
  s = s.split ''
  alphabet = ('a'..'z').to_a
  if s.length.even?
    alphabet.each do |c|
      return 'NO' if s.count(c).odd?
    end
  else
    alphabet.each do |c|
      if s.count(c).odd?
        if !odds
          odds = true
        else
          return 'NO'
        end
      end
    end
  end

  'YES'
end


class Tests < Test::Unit::TestCase

  def test_1
    assert_equal(solution('aaabbb'), 'NO')
  end

  def test_2
    assert_equal(solution('cdefghmnopqrstuvw'), 'NO')
  end

  def test_3
    assert_equal(solution('aabb'), 'YES')
  end

  def test_4
    assert_equal(solution('aaabb'), 'YES')
  end

  # cdcdcdcdeeeef
  # cccc dddd eeee f
  def test_5
    assert_equal(solution('cdcdcdcdeeeef'), 'YES')
  end

end