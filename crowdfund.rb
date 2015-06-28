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

# Instantiate 4 projects
project1 = Project.new("LMN", 0, 2000)
project2 = Project.new("XYZ", 0, 3000)
project3 = Project.new("ALT", 50, 1000)

# Print out the project's details
puts project1
puts project2
puts project3
puts "\n"

# Add/remove funds to the each project
project1.add_funds(100)
project2.add_funds(300)
project3.remove_funds(50)
puts "\n"

# Print out the project's details again
puts project1
puts project2
puts project3
puts "\n"

# Print the funding still needed for each project
puts project1.funds_needed
puts project2.funds_needed
puts project3.funds_needed
puts "\n"

# Change a project's name and print it
project3.name = "ROI"
project3.add_funds(250)
puts project3
puts "\n"

# Print the funding still needed for each project again
puts project1.funds_needed
puts project2.funds_needed
puts project3.funds_needed
puts "\n"

# Add all projects to an array
projects = [project1, project2, project3]

# Print out the number of projects
puts "There are #{projects.size} projects in the portfolio.\n\n"

# Print out each project
projects.each do |project|
  puts project
end

# Need a new line
puts "\n"

# Print out each project's funding amount
projects.each do |project|
  puts "Project #{project.name} needs $#{project.funding_goal}."
end

# Need a new line
puts "\n"

# Add and remove funds then print the project out.
projects.each do |project|
  project.add_funds(100)
  project.remove_funds(25)
  project.add_funds(50)
  puts project
  puts "\n"
end

# Remove project3
projects.pop

# Add another project
project3 = Project.new("NOO", 0, 75)
projects.push(project3)

# Print out projects again
projects.each do |project|
  puts project
end

project3.add_funds(15)

# Need a new line
puts "\n"

projects.each do |project|
  puts project
end
