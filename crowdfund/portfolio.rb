require_relative "project"
require_relative "funding_round"
require_relative "funding_levels"

class Portfolio
  attr_reader :name

  def initialize(name)
    @name = name
    @projects = []
  end

  def print_name_and_funding(project)
    puts "#{project.name} (#{project.funding})"
  end

  def add_project(project)
    @projects << project
  end

  def project_stats

    high_funding, low_funding = @projects.partition { |p| p.lots_o_money? }

    puts "#{high_funding.size} high funded projects:"
    high_funding.each do |project|
      print_name_and_funding(project)
    end

    puts "#{low_funding.size} low funded projects:"
    low_funding.each do |projects|
      print_name_and_funding(projects)
    end
  end

  def portfolio_stats
    puts "\n#{@title} Funding:"

    sorted_projects = @projects.sort { |a, b| b.funding <=> a.funding }

    sorted_projects.each do |project|
      formatted_name = project.name.ljust(20, '.')
      puts "#{formatted_name} #{project.funding}"
    end
  end

  def show_projects(rounds)

    puts "There are #{@projects.size} projects in the #{@name} portfolio."
    puts "\nProjects in #{@name}:"

    @projects.each do |project|
      puts project
    end

    puts "\n"

    1.upto(rounds) do |round|
      puts "Round #{round}"
      @projects.each do |project|
        FundingRound.transaction(project)
        puts project
        puts "\n"
      end
    end

    levels = FundingLevels::LEVELS
    puts "There are #{levels.count} funding levels."
    levels.each do |l|
      puts "The #{l.name.capitalize} level is worth $#{l.value}."
    end
    puts "\n"

  end
end
