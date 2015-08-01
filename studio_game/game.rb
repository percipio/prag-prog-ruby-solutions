require_relative "player"
require_relative "game_turn"
require_relative "treasure_trove"

class Game
  attr_reader :title

  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end

  def add_player(player)
    @players << player
  end

  def health_stats

    strong_players, weak_players = @players.partition { |p| p.strong? }

    puts "#{strong_players.size} strong players:"
    strong_players.each do |player|
      print_name_and_health(player)
    end

    puts "#{weak_players.size} weak players:"
    weak_players.each do |player|
      print_name_and_health(player)
    end
  end

  def game_stats
    puts "\n#{@title} High Scores:"

    sorted_players = @players.sort { |a, b| b.score <=> a.score }

    sorted_players.each do |player|
      formatted_name = player.name.ljust(20, '.')
      puts "#{formatted_name} #{player.score}"
    end
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

    treasures = TreasureTrove::TREASURES
    puts "There are #{treasures.count} treasures."
    treasures.each do |t|
      puts "A #{t.name.capitalize} is worth #{t.points} points."
    end
    puts "\n"

  end
end
