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

class Game
  attr_reader :title

  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play

    puts "New Game! #{@title} is on!"
    puts "There are #{@players.size} players in #{@title}.\n\n"

    @players.each do |player|
      puts player
      puts "\n"
    end

    @players.each do |player|
      player.w00t
      player.blam
      puts player
      puts "\n"
    end

  end
end

# Bonus round!
# Instantiate 3 players
player1 = Player.new("larry", 90)
player2 = Player.new("curly", 120)
player3 = Player.new("moe", 75)

# Create a game
knuckleheads = Game.new("knuckleheads")
# Add some players
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
# Play the game already!
knuckleheads.play

# Instantiate 3 players
player1 = Player.new("alvin", 120)
player2 = Player.new("simon")
player3 = Player.new("theodore", 85)

# Create a new game
chipmunks = Game.new("chipmunks")
# Add some players
chipmunks.add_player(player1)
chipmunks.add_player(player2)
chipmunks.add_player(player3)
# Play the new game
chipmunks.play
