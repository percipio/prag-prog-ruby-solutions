name1 = "larry"
name2 = "curly"
name3 = "moe"

health1 = 60
puts "#{name1}'s health is #{health1}"

# triple larry's health.
puts "#{name1}'s health has tripled to #{health1 * 3}"

# divide larry's health by nine (as a float).
puts "#{name1}'s health, divided by nine: #{health1 / 9.0}"

# divide larry's health by nine (as an integer).
puts "#{name1}'s health, divided by nine: #{health1 / 9}"

# print out a list of players.
puts "\nPlayers:\n \tlarry\n \tcurly\n \tmoe"

# now use variables for each player name.
puts "\nPlayers: (from vars)\n \t#{name1}\n \t#{name2}\n \t#{name3}"
