class Player
 attr_accessor :name
 attr_reader :health

 def initialize(name, health=100)
   @name = name.capitalize
   @health = health
 end

 def name=(new_name)
   @name = new_name.capitalize
 end

 def to_s
   "I'm #{@name} and my health is #{@health} and my score is #{score}."
 end

 def blam
   @health -= 10
   puts "#{@name} got blammed!"
 end

 def w00t
   @health += 15
   puts "#{@name} got w00ted!"
 end

 def score
   @health + @name.length
 end

end

# Instantiate 4 players
player1 = Player.new("larry", 90)
player2 = Player.new("curly", 120)
player3 = Player.new("moe", 75)

# Print out player's details
puts player1
puts player2
puts player3
puts "\n"

# Blam or W00t players
player1.w00t
player2.blam
player3.w00t
puts "\n"

# Print out player's new details
puts player1
puts player2
puts player3
puts "\n"

# Print player's anonymous health
puts player1.health
puts player2.health
puts player3.health
puts "\n"

# Change Larry's name to Lawrence, then print it.
player1.name = "lawrence"
puts player1

# Create a array of players
players = [player1, player2, player3]
puts "\nThere are #{players.size} players in the game.\n\n"
players.each do |player|
  puts player
end

# Print out the player's health
players.each do |player|
  puts player .health
end

# Iterate through the players, w00t and blam them, then print it out.
players.each do |player|
  player.w00t
  player.blam
  puts player
  puts "\n"
end

# Moe's not playing anymore, delete him
players.pop

puts players

# Add another player to replace player3
player3 = Player.new("Shemp", 125)
players.push(player3)

# Add a new line
puts "\n"

# Print the players again.
puts players
