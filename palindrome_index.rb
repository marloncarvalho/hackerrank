require  'test/unit'

# def solution(s)
#   return -1 if s == s.reverse
#
#   for i in 0..s.length - 1
#     temp = s.clone.split ''
#     temp.delete_at i
#     return i if temp == temp.reverse
#   end
#
#   -1
# end

# def solution(s)
#   return -1 if s == s.reverse
#
#   arr = s.split ''
#   b = 0
#   e = s.length - 1
#   while b != e
#     if arr[b] != s[e]
#       temp = arr.dup
#       temp.delete_at b
#       if temp == temp.reverse
#         return b
#       else
#         temp = arr.dup
#         temp.delete_at e
#         if temp == temp.reverse
#           return e
#         end
#       end
#     end
#     b += 1
#     e -= 1
#   end
#
#   -1
# end

def solution(s)
  s = s.split ''
  r = s.reverse

  for i in (0..s.length - 1)
    if s[i] != r[i]
      temp = s.dup
      temp.delete_at(i)
      if temp == temp.reverse
        return i
      else
        temp = s.dup
        temp.delete_at(i + s.length - 1)
        return i + s.length - 1 if temp == temp.reverse
      end
    end
  end

  -1
end

class Tests < Test::Unit::TestCase

  def test_1
    assert_equal(solution("#{'a' * 100000}b"), 100000)
  end

  def test_2
    assert_equal(solution('aaab'), 3)
  end

  def test_3
    assert_equal(solution('baa'), 0)
  end

  def test_4
    assert_equal(solution('aaa'), -1)
  end

  def test_5
    assert_equal(solution('asdfasdfs'), -1)
  end

end