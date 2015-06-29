class Player
 attr_accessor :name
 attr_reader :health

 def initialize(name, health=100)
   @name = name.capitalize
   @health = health
 end

 def name=(new_name)
   @name = new_name.capitalize
 end

 def to_s
   "I'm #{@name} and my health is #{@health} and my score is #{score}."
 end

 def blam
   @health -= 10
   puts "#{@name} got blammed!"
 end

 def w00t
   @health += 15
   puts "#{@name} got w00ted!"
 end

 def score
   @health + @name.length
 end

end
