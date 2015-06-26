def say_hello(name, health=100)
  time = Time.new.strftime('%I:%M:%S')
  "I'm #{name.capitalize} with a health of #{health} as of #{time}"
end

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)
