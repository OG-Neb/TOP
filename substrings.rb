# Predefined dictionary
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

# Method to find substrings
def substrings(string, dictionary)
  string = string.downcase
  results = {}
  dictionary.each do |word|
    count = string.scan(word).length
    results[word] = count if count > 0
  end
  results
end

# User input
puts "Enter a string to search substrings:"
input_string = gets.chomp

# Call the method and display results
result = substrings(input_string, dictionary)
puts "Here are the substrings found:"
puts result
