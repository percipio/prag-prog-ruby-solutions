require_relative 'funding_levels'

describe Level do

  before do
    @funding = Level.new(:silver, 75)
  end

  it "has a name attribute" do
    expect(@funding.name).to eq(:silver)
  end

  it "has a value attribute" do
    expect(@funding.value).to eq(75)
  end

end

describe FundingLevels do

  it "has three funding levels" do
    expect(FundingLevels::LEVELS.size).to eq(3)
  end

  it "has a bronze level worth $50" do
    expect(FundingLevels::LEVELS[0]).to eq(Level.new(:bronze, 50))
  end

  it "has a silver level worth $75" do
    expect(FundingLevels::LEVELS[1]).to eq(Level.new(:silver, 75))
  end

  it "has a gold level worth $100" do
    expect(FundingLevels::LEVELS[2]).to eq(Level.new(:gold, 100))
  end

  it "returns a random funding_level" do
    funding_level = FundingLevels.random

    expect(FundingLevels::LEVELS).to include(funding_level)
  end

end
