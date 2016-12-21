# Homework - Analyzer

def multiply(first_number, second_number)
  first_number.to_f * second_number.to_f
end

def divide(first_number, second_number)
  first_number.to_f / second_number.to_f
end

def subtract(first_number, second_number)
  first_number.to_f - second_number.to_f
end

def mod(first_number, second_number)
  first_number.to_f % second_number.to_f
end

puts "What do you want to do? 1) multiply 2) divide 3) subtract 4) mod"
prompt = gets.chomp.to_i

puts "Please enter your first number:"
first_number = gets.chomp

puts "Please enter your second number:"
second_number = gets.chomp

if prompt == 1
  puts "You have chosen to multiply #{first_number} with #{second_number}"
  result = multiply(first_number, second_number)
elsif prompt == 2
  puts "You have chosen to divide #{first_number} with #{second_number}"
  result = divide(first_number, second_number)
elsif prompt == 3
  puts "You have chosen to subtract #{first_number} with #{second_number}"
  result = subtract(first_number, second_number)
elsif prompt == 4
  puts "You have chosen to mod #{first_number} with #{second_number}"
  result = mod(first_number, second_number)
else 
  puts "You have entered an invalid choice."
end

puts "The result is #{result}!"

