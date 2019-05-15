require 'pry'
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, year)
    roster[year] ||= []
    roster[year] << student
  end

  def grade(year)
    @roster[year]
  end

  def sort
    sort_roster = {}
    roster.each do |year, student|
      sort_roster[year] = student.sort
    end
    sort_roster
  end



end

school = School.new("Bayside High School")
