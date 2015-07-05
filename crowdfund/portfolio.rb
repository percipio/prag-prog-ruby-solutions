require_relative "project"
require_relative "funding_round"

class Portfolio
  attr_reader :name

  def initialize(name)
    @name = name
    @projects = []
  end

  def add_project(project)
    @projects << project
  end

  def show_projects
    puts "There are #{@projects.size} projects in the #{@name} portfolio."
    puts "\nProjects in #{@name}:"

    @projects.each do |project|
      puts project
    end

    puts "\n"

    @projects.each do |project|
      FundingRound.transaction(project)
      puts project
      puts "\n"
    end

  end

end
