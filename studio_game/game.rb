require_relative "player"
require_relative "die"

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
      die = Die.new
      rolled_number = die.roll
      case die.roll
        when 1..2
          player.blam
        when 3..4
          puts "#{player.name} was skipped."
        else
          player.w00t
      end
      puts player
      puts "\n"
    end
  end
end
