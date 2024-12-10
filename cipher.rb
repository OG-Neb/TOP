puts "Enter Message: "
message = gets.chomp
puts "Enter Shift Factor: "
shiftfactor = gets.chomp.to_i

def encryption(message, shiftfactor)
  encrypted_message = message.chars.map do |char|
    if char =~ /[a-z]/ # Check if the character is lowercase
      ((char.ord - 'a'.ord + shiftfactor) % 26 + 'a'.ord).chr
    elsif char =~ /[A-Z]/ # Check if the character is uppercase
      ((char.ord - 'A'.ord + shiftfactor) % 26 + 'A'.ord).chr
    else
      char # Non-alphabetic characters remain the same
    end
  end.join

  puts "Encrypted Message: #{encrypted_message}"
end

encryption(message, shiftfactor)