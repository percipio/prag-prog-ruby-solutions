# Load the Player class
require_relative 'player'

describe Player do
  # initialize the player variables
  before do
    $stdout = StringIO.new
    @initial_health = 150
    @player = Player.new("larry", @initial_health)
  end
  # test the name capitalization
  it "has a capitalized name" do
    expect(@player.name).to eq("Larry")
  end
  # test the initial health
  it "has an initial health" do
    expect(@player.health).to eq(150)
  end

  it "has a string representation" do
    expect(@player.to_s).to eq("I'm #{@player.name} and my health is #{@player.health} and my score is #{@player.score}.")
  end

  it "computes a score as the sum of its health and length of name" do
    expect(@player.score).to eq(150 + @player.name.length)
  end

  it "increases health by 15 when w00ted" do
    @player.w00t
    expect(@player.health).to eq(@initial_health + 15)
  end

  it "decreases health by 10 when blammed" do
    @player.blam
    expect(@player.health).to eq(@initial_health - 10)
  end

end