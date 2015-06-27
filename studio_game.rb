class Player

 def initialize(name, health=100)
   @name = name.capitalize
   @health = health
 end

 def to_s
   "I'm #{@name} and my health is #{@health}."
 end

 def blam
   @health -= 10
   puts "#{@name} got blammed!"
 end

 def w00t
   @health += 15
   puts "#{@name} got w00ted!"
 end

end

player1 = Player.new("larry", 90)
player2 = Player.new("curly", 120)
player3 = Player.new("moe", 75)
player4 = Player.new("shemp")


puts player1
puts player2
puts player3
puts player4
puts "\n"

player1.w00t
player2.blam
player3.w00t
player4.w00t
puts "\n"

puts player1
puts player2
puts player3
puts player4
puts "\n"
