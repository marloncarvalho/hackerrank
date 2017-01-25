require  'test/unit'

# def solution(s)
#   i = 0
#   arr = s.split ''
#   while true
#     if arr[i] == arr[i + 1]
#       arr.delete_at(i)
#       arr.delete_at(i)
#       i = -1
#     end
#
#     i += 1
#     break if i > arr.length - 1
#   end
#
#   arr.length > 0 ? arr.join : 'Empty String'
# end

# Second Attempt
def solution(s)
  s = s.split ''
  return 'Empty String' if s.uniq.length == 1

  i = 1
  while i <= s.length
    if s[i - 1] == s[i]
      s.delete_at i - 1
      s.delete_at i - 1
      i = 0
    end
    i += 1
  end

  s.length <= 0 ? 'Empty String' : s.join
end

class Tests < Test::Unit::TestCase

  def test_simple
    assert_equal(solution('aaabccddd'), 'abd')
  end

  def test_empty_string1
    assert_equal(solution('baab'), 'Empty String')
  end

  def test_empty_string2
    assert_equal(solution('aa'), 'Empty String')
  end

end