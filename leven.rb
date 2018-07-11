def levenshtein(s, t)
  w1 = s.length
  w2 = t.length
  return w1 if w2 == 0
  return w2 if w1 == 0
  d = Array.new(w1+1) {Array.new(w2+1)}

  (0..w1).each {|i| d[i][0] = i}
  (0..w2).each {|j| d[0][j] = j}
  (1..w2).each do |j|
    (1..w1).each do |i|
      d[i][j] = if s[i-1] == t[j-1]  # doposowanie indexu do stringa
                  d[i-1][j-1]
                else
                  [ d[i-1][j]+1,    # usunięcie
                    d[i][j-1]+1,    # wprowadzenie
                    d[i-1][j-1]+1,  # podstawienie
                  ].min
                end
    end
  end
  d[w1][w2]
end
puts 'Podaj piewsze słowo:'
word1 = gets.chomp
puts 'Podaj drugie słowo:'
word2 = gets.chomp
[ [word1, word2], ['testowe','testowy'] ].each do |s,t|
  puts "levenshtein('#{s}', '#{t}') = #{levenshtein(s, t)}"
end
