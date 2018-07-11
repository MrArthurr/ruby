bottles = 99
bottle_string = ['five', 'four', 'three', 'two', 'one']
94.times do
  a = bottles - 1 #odjęcie butelki
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.".gsub("bottles", "bottle")
    puts "Take one down and pass it around, #{a} bottles of beer on the wall.".gsub("bottles", "bottle")

    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
    puts "Take one down and pass it around, #{a} bottles of beer on the wall."
  bottles -= 1

end
i = 0
5.times do
  if (i==4)
    puts "#{bottle_string[i]} bottles of beer on the wall, #{bottle_string[i]} bottles of beer.".gsub("bottles", "bottle")
    puts "Take one down and pass it around, no more bottles of beer on the wall."
  else
  puts "#{bottle_string[i]} bottles of beer on the wall, #{bottle_string[i]} bottles of beer."
  puts "Take one down and pass it around, #{bottle_string[i+1]} bottles of beer on the wall."
end
  i += 1

end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
