# code here!
class School
    attr_accessor :name, :roster, :student, :grade
    
    def initialize(name) 
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        
        @roster[grade] ||= []
        @roster[grade] << student
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort 
        list = {}
        @roster.each do |grade, student| 
          list[grade] = student.sort 
        end 
        list
      end 

end
