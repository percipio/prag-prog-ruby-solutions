require_relative "player"
require_relative "game_turn"

class Game
  attr_reader :title

  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play(rounds)

    puts "New Game! #{@title} is on!"
    puts "There are #{@players.size} players in #{@title}.\n\n"

    @players.each do |player|
      puts player
    end

    puts "\n"

    1.upto(rounds) do |round|
      puts "Round #{round}"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
        puts "\n"
      end
    end
  end
end
