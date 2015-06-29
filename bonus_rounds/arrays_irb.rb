books = %W(Blink Freakanomics Outliers)
p books      # ["Blink", "Freakanomics", "Outliers"]
p books.size # 3
p books[2]   # "Outliers"
p books[4]   # nil

puts "\nLet's start over...\n\n"

puts "Here's a new 'Books' array:"

books = [] # an empty array
books.push("Blink") # adds "Blink" to the array
books.push("Freakanomics") # adds "Freakanomics" to the array
books << "Outliers" # addds "Outliers" to the array
p books # prints out the array object

puts "\nNow let's remove the books from the array..."
puts "Remove 'Outliers'"
books.pop # removes the last object in the array ("Outliers")
p books # how does the array look now?
puts "Remove 'Freakanomics'"
books.pop # removes the last object in the array ("Freakanomics")
p books # how does the array look now?
puts "Remove 'Blink'"
books.pop # removes the last object in the array ("Blink")
p books # how does the array look now?

# Let's recreate the Books array
books = %W(Blink Freakanomics Outliers)
#  Let's create a
puts books.join(" and ")

# Let's shuffle the order of the objects
p books.shuffle
# Let's shuffle the order of the objects again
p books.shuffle
# Let's do it again
p books.shuffle
# Let's do it yet again, yep it's random!
p books.shuffle
