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
