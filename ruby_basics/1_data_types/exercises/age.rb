loop do
	print("How old are you?: ")
	age = gets.chomp
if age.to_i.to_s == age
	age = age.to_i
	puts age + 10
	puts age + 20
	puts age + 30
	puts age + 40
	break
else
	puts ("please enter a number!")
end
end
