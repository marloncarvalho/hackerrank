def solution(s)
  r = 0
  a = s.split ''
  u = a.uniq

  return 0 if s.length == 1 || u.length == 1
  return 2 if u.length == 2

  # Vamos fazer todas as combinações possíveis de dois caracteres e manter esses
  # dois caracteres, apagando os demais. Aí checamos se a string resultante
  # segue a regra do exercício.
  u.combination(2).each do |comb|
    t = (a - (a - comb))
    joined = t.join

    # Não podemos ter dois caracteres iguais juntos.
    if !joined.include?("#{comb[0]}#{comb[0]}") && !joined.include?("#{comb[1]}#{comb[1]}")
      r = t.length if t.length > r
    end
  end

  r
end


puts solution('beabeefeab')
puts solution('a')
puts solution('ab')
puts solution('abc')
