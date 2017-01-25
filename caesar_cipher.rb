def solution(s, k)
  result = ''

  s.each_byte do |b|
    if b.chr =~ /[[:alpha:]]/
      sum = b + k
      if b.chr.upcase == b.chr
        sum = ((sum - 90) + 64) while sum > 90
      else
        sum = ((sum - 122) + 96) while sum > 122
      end
      result << sum.chr
    else
      result << b.chr
    end
  end

  result
end

puts solution('Hello_World!', 4) #'Lipps_Asvph!'
puts solution('middle-Outz', 2)
puts solution('www.abc.xy', 87) # fff.jkl.gh
