# 1. Create dictionary (hash) with 10 city names, where city name is string, key and area code are value
# 2. get input from user on the city name
# 3. display city names that are available
# 4. display area code based on user input
# 5. loop to keep program running and prompt user for new city names to lookup, til the user input = q to exit program

# method to look up area code, takes hash and city name to output area code
# method to display city names to user
# loop to get input from user

def city_prompt(hash)
  puts "Please select a city from the list below to display the applicable area code: (q to quit)"
  hash.each { |k, v| puts k }
end

def look_up_area_code(hash, input)
  if hash.include?(input)
    puts "You selected: #{input}"
    puts "Area code: #{hash[input]}"
  else
    puts "Please select a valid city."
  end
end

# hash of cities and area codes
dial_book = { 
  'New York' => '212',
  'New Brunswick' => '732',
  'Eugene' => '541',
  'Portland' => '971',
  'Seattle' => '360',
  'Philadelphia' => '267',
  'Charleston' => '304',
  'Casper' => '307',
  'Boston' => '339',
  'Sioux Falls' => '605'
}

# loop to run program
loop do
  city_prompt dial_book
  answer = gets.chomp
  
  if answer == "q"
    break
  else
    look_up_area_code dial_book, answer
  end
end
