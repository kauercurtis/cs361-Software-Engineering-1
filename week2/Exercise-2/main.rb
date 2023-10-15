##  Name: Curtis Kauer
##  Exercise 2: Functions and comments
##  Name reverse and Name borgification

@name = "Johanna Jackson"

# reverseName - reverses a given name
# param1 - name - the name to reverse
def reverseName(name)

  splitName = name.split

  reversedSplitName = splitName.reverse
  
  reversedSplitName.join(' ')
end

# borgifyName - adds Borg to the end of a name
# param1 - name - the name to add borg to the end of
def borgifyName(name)

  splitName = name.split

  splitName << "Borg"

  return splitName.join(' ')

end

puts "New name: #{reverseName(@name)}"
puts "New borg name: #{borgifyName(@name)}"