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

  context "with a health greater than 100" do
    before do
      @player = Player.new("larry", 150)
    end

    it "is strong" do
      expect(@player).to be_strong
    end

  end

  context "with a health less than 100" do
    before do
      @player = Player.new("larry", 99)
    end

    it "is wimpy" do
      expect(@player).to_not be_strong
    end

  end

  context "in a collection of players" do
    before do
      @player1 = Player.new("moe", 100)
      @player2 = Player.new("larry", 200)
      @player3 = Player.new("curly", 300)

      @players = [@player1, @player2, @player3]
    end

    it "is sorted by decreasing score" do
      expect(@players).to contain_exactly(@player3, @player2, @player1)
    end
  end
end
