def solution(days)
  n = 5
  likes = 0
  days.times do
    floor = (n / 2).floor
    likes += floor
    n = floor * 3
  end

  likes
end

puts solution(3)
