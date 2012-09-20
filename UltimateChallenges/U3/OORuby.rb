require 'date'

class Person
  def initialize (first_name, last_name, dob)
    @first_name = first_name
    @last_name = last_name
    @dob = dob
  end

  protected

  def parse_date(date)
  the_date = Time.now
  dates = Date.strptime(date, '%d-%m-%Y')
   y = dates.year
   m = dates.month
   d =dates.day
   age = the_date.year - y
   age -=1 if the_date.month < m-
   age
  end

  attr_accessor :first_name
  attr_accessor :last_name
  attr_reader :dob
end

class Instructor < Person
  def initialize (first_name, last_name, dob, hire_date)
    super(first_name, last_name, dob)
    @hire_date = hire_date
    #Counter
    @@Instructor_count = defined?(@@Instructor_count) ? @@Instructor_count + 1 : 1
  end
  def self.Instructor_count
    @@Instructor_count
  end
  def to_s
    "Instructor: #{first_name} #{last_name} dob: #{dob} (age: #{parse_date(dob)}), hired: #{hire_date} (#{parse_date(hire_date)} years go)"
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
  "Student #{first_name} Student number: #{@student_number}, Dob: #{dob} (age:#{parse_date( dob)}), Program: #{@program}"
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
  def to_s
    "Course: #{@name}, Credit Hours: #{@credit_hours}"
  end

end

class Section
  def initialize (course, instructor, term, section_number, students)
    @course = course
    @instructor = instructor
    @term = term
    @section_number = section_number
    @students = students
     @@Section_count = defined?(@@Section_count) ? @@Section_count + 1 : 1
  end
  
  def self.Section_count
    @@Section_count
  end
  
  def self.add_student (irst_name, last_name, dob, student_number, program)
    Student.new(first_name, last_name, dob,student_number, program)
  end
  
  def to_s
    "#{@@Section_count}) Section number #{@section_number} of Course: #{@course} for term #{@term} has #{@students} students enrolled"
  end
end




#Add Arrays  
students = Array.new
instructors = Array.new
courses = Array.new
sections = Array.new

#Add new objects to arrays
students << Student.new('jersey', 'galapon', '12-12-1991', 1997, 'BIT')
students << Student.new('jersey', 'galapon', '12-12-1991', 1997, 'BIT')
students << Student.new('jersey', 'galapon', '12-12-1991', 1997, 'BIT')
students << Student.new('jersey', 'galapon', '12-12-1991', 1997, 'BIT')
instructors << Instructor.new('Johnny', 'Appleseed', '12-1-1991', '12-02-2005')
instructors << Instructor.new('Johnny', 'Appleseed', '12-1-1991', '12-02-2005')
instructors << Instructor.new('Johnny', 'Appleseed', '12-1-1991', '12-02-2005')
instructors << Instructor.new('Johnny', 'Appleseed', '12-1-1991', '12-02-2005')
courses << Course.new('INTRO TO MATH', 3)
courses << Course.new('INTRO TO MATH', 3)
courses << Course.new('INTRO TO MATH', 3)
courses << Course.new('INTRO TO MATH', 3)
sections << Section.new(courses[1], instructors[1], 'W2010', 1, Student.Student_count)
sections << Section.new(courses[2], instructors[1], 'W2010', 1, Student.Student_count)
sections << Section.new(courses[1], instructors[1], 'W2010', 1, Student.Student_count)
sections << Section.new(courses[2], instructors[1], 'W2010', 1, Student.Student_count)

#output
puts "There are #{Student.Student_count} Students:"
students.each { |student| puts student.to_s }
puts ""
puts "There are #{Instructor.Instructor_count} Instructors:"
instructors.each { |instructor| puts instructor.to_s}
puts ""
puts "There are #{Course.Course_count} Courses:"
courses.each { |course| puts course }
puts ""
puts "There are #{Section.Section_count} Sections:"
sections.each { |section| puts section }

