
def solution(s1, s2)
  s1 = s1.split('').uniq
  s2 = s2.split('').uniq
  (s1 - s2).length == s1.length ? 'NO' : 'YES'
end
