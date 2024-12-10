a = ""

while true
  puts "type anything and see how many characters are in your text. type STOP to exit."
  a = gets.chomp
  break if a == "STOP"
  puts a.size
end