require_relative 'project'
require_relative 'die'

module FundingRound
  def self.transaction(project)
    die = Die.new
    case die.roll
      when 1..2
        project.remove_funds(10)
      when 3..4
        puts "#{project.name} didn't get funding."
      else
        project.add_funds(75)
    end
  end
end
