def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} student#{"s" if students.count > 1 }"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  return students
end

def print(students)
  if students.empty?
    puts "No students listed."
    return
  end
  puts "The students of Villains Academy\n--------------------------------"
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
    puts "\nOverall, we have #{students.count} great student#{"s" if students.count > 1 }\n\n"
end

def menu
  students = ""
  while true do
    puts "Welcome to the student directory\n1)Input the students\n2)List the students\n3)Save students\n9)exit"
    choice = gets.chomp.downcase
    if choice == "1" || choice == "input the students"
      students = input_students
    elsif choice == "2" || choice == "list the students"
      print(students)
    elsif choice == "3" || choice == "save students"
      savefile(students)
    elsif choice == "9" || choice == "exit"
      exit
    else
      puts "Invalid input"
    end
  end
end

def savefile(students)
  file = File.open("students.csv", "w")
  students.each do |student|
    student_info = [student[:name], student[:cohort]]
    csv_line = student_info.join(",")
    file.puts csv_line
  end
  file.close
end
menu
