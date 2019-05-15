# code here!
require 'pry'
class School
  attr_reader :school_name, :roster

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade_level)
    roster[grade_level] ||= []
    roster[grade_level] << student_name
  end

  def grade(grade_level)
    @roster.find do |key, value|
      if key == grade_level
        return value
      end
    end
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
    @roster
  end
end
