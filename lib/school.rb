class School
  attr_accessor :name, :roster

def initialize(name)
  @name = name
   @roster = {}
end

def add_student(student_name, grade)
  roster[grade] ||= [] #if the roster[grade] doesnt have a set value, replace it with the new grades/ names
  #put it in the grades first bc thats the order we want grade-> names
    roster[grade] << student_name
end

def grade(student_grade)
  roster[student_grade]  #calling roster with the student grades in the array
end


  # this method should arrange the students in each grade by alphabetical order
def sort
  sorted_info = {}  #setting sort to empty hash
    roster.each do |grade, students| #iterating through roster array of grade & students
      sorted_info[grade] = students.sort #setting hash[with the grade array] = students with sorted names in alpha
    end
    sorted_info #calling this method to return what we wrote
  end
end
