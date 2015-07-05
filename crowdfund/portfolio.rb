require_relative "project"
require_relative "die"

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
      die = Die.new
      rolled_number = die.roll
      case die.roll
        when 1..2
          project.remove_funds(10)
        when 3..4
          puts "#{project.name} didn't get funding."
        else
          project.add_funds(75)
      end
      puts project
      puts "\n"
    end

  end

end
