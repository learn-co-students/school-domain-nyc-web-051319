# code here!
require 'pry'

class School
  attr_accessor :student_roster
  attr_reader :name, :student

  def initialize(name)
    @name = name
    @student_roster = {}
  end

  def add_student(student, grade)
    if @student_roster.has_key?(grade)
      @student_roster[grade] << student
      #binding.pry
    else
      @student_roster[grade] = []
      @student_roster[grade] << student
    end
  end

  def roster
    @student_roster
  end

  def grade(grade)
    @student_roster[grade]
  end

  def sort
    @student_roster.each do |grade, students|
      @student_roster[grade] = students.sort
    end
    @student_roster
  end
end
