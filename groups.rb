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

# Using num_of_groups - 1 leaves the last group in the array, so the extra class members are included.
(num_of_groups - 1).times do
  # Prints a group from the front of the shuffled array.
  puts students[0..group_size-1]
  puts ""
  # Eliminates the recently printed group from the array.
  group_size.times { students.shift }
end

puts students