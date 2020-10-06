require 'date'
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = "jeff"
  while !name.empty? do
    # get another name from the user
    puts "enter name"
    name = gets.chomp
    break if name.empty?
    while true do
      puts "enter cohort"
      input_cohort = gets.chomp.capitalize
      if input_cohort == ""
        input_cohort = "November"
        break
      elsif !Date::MONTHNAMES.include?(input_cohort)
        puts "invalid input"
      else
        break
      end
    end
    # add the student hash to the array
    students << {name: name, cohort: input_cohort.to_sym}
    puts "Now we have #{students.count} students"

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
    puts "#{student[:name]}"+ " "*(25-student[:name].length) +"(#{student[:cohort]} cohort)"
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
