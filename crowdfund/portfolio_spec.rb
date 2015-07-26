require_relative 'portfolio'

describe Portfolio do

  before do
    $stdout = StringIO.new
    @portfolio = Portfolio.new("Awesome_Portfolio")
    @rounds = 2

    @initial_funding = 100
    @funding_goal = 2000
    @project = Project.new("AWL", @initial_funding, @funding_goal)

    @portfolio.add_project(@project)
  end

  it "adds funds to the project if a high number is rolled" do

    allow_any_instance_of(Die).to receive(:roll).and_return(5)

    @portfolio.show_projects(@rounds)

    expect(@project.funding).to eq(@initial_funding += 75*@rounds)
  end

  it "passes on funding the project if a medium number is rolled" do

    allow_any_instance_of(Die).to receive(:roll).and_return(3)

    @portfolio.show_projects(@rounds)

    expect(@project.funding).to eq(@initial_funding)
  end

  it "remove funds from the project if a low number is rolled" do

    allow_any_instance_of(Die).to receive(:roll).and_return(1)

    @portfolio.show_projects(@rounds)

    expect(@project.funding).to eq(@initial_funding -= 10*@rounds)
  end

  it 'checks to see if the funding goal has been reached' do
    @project.add_funds(1900)
    expect(@project.funding).to be >= (@funding_goal)
  end

  it 'checks to see that the funding goal has not been reached' do
    @project.add_funds(1800)
    expect(@project.funding).to be <= (@funding_goal)
  end

end
