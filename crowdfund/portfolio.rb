require_relative "project"

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
      project.add_funds(75)
      project.add_funds(10)
      project.remove_funds(35)
      puts project
      puts "\n"
    end

  end

end
