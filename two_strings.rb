require 'test/unit'

def solution(s)

end

class Tests < Test::Unit::TestCase

  def test_1
    assert_equal(solution('hello', 'world'), 'YES')
  end

  def test_2
    assert_equal(solution('hi', 'world'), 'NO')
  end

  def test_3
    assert_equal(solution('a', 'world'), 'NO')
  end

  def test_4
    assert_equal(solution('', 'world'), 'NO')
  end

  def test_5
    assert_equal(solution('world', 'world'), 'YES')
  end

  def test_6
    assert_equal(solution('dapkqnowwvdrknfvcmanjuroumppajrzklucroxvpfmcsclqa', 'ivtnjtgiogmwhqybjaxlktqbwsdhqrwovoavetymkpcco'), 'YES')
  end

  def test_7
    assert_equal(solution('hrtybirxncuiailznohfawjwipdtupnxnisbwcplozwrzt', 'ngdmqotxkpnuhmpfmajthzdtnztrqyugendiublcwp'), 'YES')
  end

  def test_8
    assert_equal(solution('rmpwlddwttapjzhdldjmuhmgruufltzszprzdcziigc', 'bbvvkeqkqekqqennyxqxkxnyxnyqnnybnbvnyqqe'), 'NO')
  end

end