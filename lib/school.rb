# code here!
require 'pry'

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    students_array = []
    @roster.each do |grades, students|
      if grades == grade
        students_array = students
      end
    end
    students_array
  end

  def sort
    newhash = {}
    @roster.each do |grades, students|
      newhash[grades] = students.sort
    end
    newhash 
  end
end

school = School.new("Bayside High School")
school.add_student("Zach", 9)
