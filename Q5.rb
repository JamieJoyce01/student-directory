def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return thrice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  puts "enter hobby"
  hobbies = gets.chomp
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, hobby: hobbies}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "enter name"
    name = gets.chomp
    puts "enter hobby"
    hobbies = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} Hobby: #{student[:hobby]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
