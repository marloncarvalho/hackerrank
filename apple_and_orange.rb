s,t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
a,b = gets.strip.split(' ')
a = a.to_i
b = b.to_i
m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apples = gets.strip
apples = apples.split(' ').map(&:to_i)
oranges = gets.strip
oranges = oranges.split(' ').map(&:to_i)

house = (s..t)

counter = 0
apples.each do |apple|
  d = apple + a
  counter += 1 if house.include?(d)
end

puts counter

counter = 0
oranges.each do |orange|
  d = orange + b
  counter += 1 if house.include?(d)
end

puts counter
