class Person
  def initialize (first_name, last_name, dob)
    @first_name = first_name
    @last_name = last_name
    @dob = dob
  end
  attr_accessor :first_name
  attr_accessor :last_name
  attr_reader :dob
end

class Instructor < Person
  def initialize (hire_date)
    @hire_date = hire_date
    #Counter
    @@Instructor_count = defined?(@@Instructor_count) ? @@Instructor_count + 1 : 1
  end

  def self.Instructor_count
    @@Instructor_count
  end
  attr_reader :hire_date
end

class Student < Person
  def initialize (first_name, last_name, dob, student_number, program)
    super(first_name, last_name, dob)
    @student_number = student_number
    @program = program
    #Counter
    @@Student_count = defined?(@@Student_count) ? @@Student_count + 1 : 1
  end
  def self.Student_count
    @@Student_count
  end
  def to_s
    @age = ""
  "Student #{first_name} student number: #{@student_number}, Dob: #{dob} (age:#{@age}), Program: #{@program}"
  end
end

class Course
  def initialize (name, credit_hours)
    @name = name
    @credit_hours = credit_hours
    #Counter
    @@Course_count = defined?(@@Course_count) ? @@Course_count + 1 : 1
  end

  def self.Course_count
    @@Course_count
  end
end

class Section
  def initialize (course, instructor, term, section_number, students)
    @course = course
    @instructor = instructor
    @term = term
    @section_number = section_number
    @students = students
  end

  def self.add_student (student_number, program)
    Student.new(student_number, program)
  end
end

students = Array.new
#A few of these:
students << Student.new('jersey', 'galapon', 12123, 23155, 'program')

puts "There are #{Student.Student_count} Students:"
students.each { |student| puts student.to_s }