class Project

  def initialize(name, funding=0, funding_goal=1000)
    @name = name
    @funding = funding
    @funding_goal = funding_goal
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


project1 = Project.new("LMN", 0, 2000)
project2 = Project.new("XYZ", 0, 3000)
project3 = Project.new("ALT", 50, 1000)
project4 = Project.new("NOO", 0, 75)

puts project1
puts project2
puts project3
puts project4
puts "\n"

project1.add_funds(100)
project2.add_funds(300)
project3.remove_funds(100)
project4.add_funds(200)
puts "\n"

puts project1
puts project2
puts project3
puts project4
puts "\n"
