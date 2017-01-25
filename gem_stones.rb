require 'test/unit'

def solution(stones)
  gems = ('a'..'z').to_a
  stones.each do |stone|
    gems &= stone.split('').uniq
  end
  gems.length
end

# def solution(rocks)
#   gems = ('a'..'z').to_a
#   rocks.each do |rock|
#     gems = gems & rock.split('')
#   end
#   gems.length
# end


class Tests < Test::Unit::TestCase

  def test_1
    assert_equal(solution(['abcdde','baccd','eeabg']), 2)
  end

  def test_2
    assert_equal(solution(['a','b','c']), 0)
  end

  def test_3
    assert_equal(solution(['ab','b','bc']), 1)
  end

  def test_4
    assert_equal(solution(['abcdef','abc','abc']), 3)
  end

end