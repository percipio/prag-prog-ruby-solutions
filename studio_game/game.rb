require_relative "player"

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
    end

    puts "\n"

    @players.each do |player|
      player.w00t
      player.blam
      puts player
      puts "\n"
    end
  end
end
