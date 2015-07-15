require_relative "game"

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
knuckleheads.play(2)

# Instantiate 3 players
player1 = Player.new("alvin", 120)
player2 = Player.new("simon")
player3 = Player.new("theodore", 85)

# Bonus round
# Create a new game
chipmunks = Game.new("chipmunks")
# Add some players
chipmunks.add_player(player1)
chipmunks.add_player(player2)
chipmunks.add_player(player3)
# Play the new game
chipmunks.play(2)
