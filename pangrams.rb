require  'test/unit'

# def solution(s)
#   (('a'..'z').to_a & s.downcase.split(' ')).length == 26 ? 'pangram' : 'not pangram'
# end

def solution(s)
  s = s.downcase.split('')
  r = s & ('a'..'z').to_a
  r.length == 26 ? 'pangram' : 'not pangram'
end

class Tests < Test::Unit::TestCase

  def test_simple
    assert_equal(solution('We promptly judged antique ivory buckles for the next prize'), 'pangram')
  end

  def test_simple2
    assert_equal(solution('We promptly judged antique ivory buckles for the prize'), 'not pangram')
  end

  def test_simple3
    assert_equal(solution(('A'..'Z').to_a.join), 'pangram')
  end

end
