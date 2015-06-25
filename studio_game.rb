# set the time and print it
current_time = Time.new
puts "The game started on #{current_time.strftime("%A %m/%d/%Y at %I:%M%p")}"

# assign names to the players
name1 = "larry"
name2 = "curly"
name3 = "moe"
name4 = "shemp"

# assign health values to the players
name1_health = 60
name2_health = 125
name3_health = 100
name4_health = 90

# print out name1's stats
puts "#{name1.capitalize}'s health is #{name1_health}"

# print out name2's stats
puts "#{name2.capitalize}'s health is #{name2_health}"

# now use variables for each player name.
puts "\nPlayers:\n \t#{name1}\n \t#{name2}\n \t#{name3}"

# assign name2's health the value of name1's health
name2_health = name1_health

# print out name2's health again.
puts "#{name2.capitalize}'s health is #{name2_health}"

# change name1's health
name1_health = 30

# print out name1's stats again
puts "#{name1.capitalize}'s health is #{name1_health}"

# print out name2's stats again
puts "#{name2.capitalize}'s health is #{name2_health}"

# print out name3's stats
puts "#{name3.capitalize}'s health is #{name3_health}".center(30, '*')

# print out name2's stats
puts "#{name4.capitalize.ljust(20, '.')} #{name4_health} health"

# revers the number 123
puts "Number 123 reversed: #{123.to_s.reverse.to_i}"
