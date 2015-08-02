Level = Struct.new(:name, :value)

module FundingLevels
  LEVELS = [
    Level.new(:bronze, 50),
    Level.new(:silver, 75),
    Level.new(:gold, 100)
  ]

  def self.random
    LEVELS.sample
  end
end
