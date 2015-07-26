# I'm not using the 'should' syntax
# I didn't follow the numbers from the course
# Load the Player class
require_relative 'project'

describe Project do
  # initialize the project variables
  before do
    $stdout = StringIO.new
    @initial_funding = 250
    @funding_goal = 2000
    @project = Project.new("XYZ", @initial_funding, @funding_goal)
  end

  it "has a name" do
    expect(@project.name).to eq("XYZ")
  end

  it "has an initial funding" do
    expect(@project.funding).to eq(250)
  end

  it "has a string representation" do
    expect(@project.to_s).to eq("#{@project.name} has $#{@project.funding} towards a goal of $#{@project.funding_goal}")
  end

  it "increases funding amount by 100" do
    @project.add_funds(100)
    expect(@project.funding).to eq(@initial_funding + 100)
  end

  it "decreases funding amount by 50" do
    @project.remove_funds(50)
    expect(@project.funding).to eq(@initial_funding - 50)
  end

  it "computes a total funding still needed" do
    @project.add_funds(100)
    @project.remove_funds(200)
    expect(@project.funds_needed).to eq(@funding_goal - (@initial_funding - 100))
  end

  context "in a collection of projects" do
    before do
      @project1 = Project.new("Project 1", 1200, 2500)
      @project2 = Project.new("Project 2", 220, 1000)
      @project3 = Project.new("Project 3", 500, 1500)

      @projects = [@project1, @project2, @project3]
    end

    it "is sorted by decreasing funding" do
      expect(@projects).to contain_exactly(@project1, @project2, @project3)
    end
  end

end
