# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  #def roster=(info={})
    #@roster = info
  #end

  #def roster
    #@roster = {}
  #end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sort = {}
    roster.each do |student_grade, student_names|
      sort[student_grade] = student_names.sort
    end
    sort
  end

end
