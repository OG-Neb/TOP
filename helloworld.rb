puts "Type something"
a = gets.chomp

if a.size > 10
  puts a.upcase
else
  puts a
end