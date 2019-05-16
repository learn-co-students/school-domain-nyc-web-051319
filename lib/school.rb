# code here!
require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster.select do |level ,students|
      if level == grade
        return students
      end
    end
  end

  def sort
    @roster.each do |key, value|
    value.sort!
    end
  end

end
