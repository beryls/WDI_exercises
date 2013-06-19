puts `clear`

students = ["Alan Appelstein",
  "Alice Mottola",
  "Alina Guzman",
  "Andrew Silbersmith",
  "Anuj Jhunjhunwala",
  "Ben Israeli",
  "Beryl Schragger",
  "Christine Coulter",
  "Christopher Huyett",
  "Christopher Wright",
  "Corbin Sykes",
  "Eleyna Whittingham",
  "Eric Gong",
  "Jamal Powell",
  "Jason Darcy",
  "Kevon Cheung",
  "Mike Mayer",
  "Mike Vanger",
  "Nick Lombardi",
  "Teddy Cleveland",
  "Thomas Yu",
  "Tim Blonski",
  "Tom Brennan",
  "Tricia Dougals",
  "Wesley Carr",
  "Zachariah Reitano"]

print "What group size do you want? "
group_size = gets.chomp.to_i
# num_of_groups gets truncated, so it factors in the extra class members.
num_of_groups = students.size/group_size

puts `clear`

students.shuffle!

# Uses i for group number.
i = 1

# Using num_of_groups - 1 leaves the last group in the array, so the extra class members are included.
(num_of_groups - 1).times do
  puts "Group #{i}:"
  # Prints a group from the front of the shuffled array, and eliminates those students from the array.
  puts students.slice!(0, group_size)
  puts ""
  # Increases group number after each group is printed.
  i += 1
end

puts "Group #{i}:"
puts students