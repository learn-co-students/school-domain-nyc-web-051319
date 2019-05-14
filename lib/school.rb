require 'pry'
# code here!
class School

  attr_reader :roster

  def initialize(name)
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |k, v|
      @roster[k] = v.sort
    end
    @roster
  end

end
