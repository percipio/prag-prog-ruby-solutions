class Project
  attr_reader :funding, :funding_goal
  attr_accessor :name

  def initialize(name, funding=0, funding_goal=1000)
    @name = name
    @funding = funding
    @funding_goal = funding_goal
  end

  def funds_needed
    @funding_goal - @funding
  end

  def to_s
    "#{@name} has $#{@funding} towards a goal of $#{@funding_goal}"
  end

  def add_funds(funds)
    @funding += funds
    puts "#{@name} raised some funds!"
  end

  def remove_funds(funds)
    @funding -= funds
    if @funding < 0
      @funding = 0
    end
    puts "#{@name} lost funds!"
  end

end

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
# Instantiate 4 projects
project1 = Project.new("LMN", 0, 2000)
project2 = Project.new("XYZ", 0, 3000)
project3 = Project.new("ALT", 50, 1000)

# Create the portfolio
awesome_fund = Portfolio.new("Awesome Fund")
# Add projects to portfolio
awesome_fund.add_project(project1)
awesome_fund.add_project(project2)
awesome_fund.add_project(project3)
# Show the portfolio
awesome_fund.show_projects
