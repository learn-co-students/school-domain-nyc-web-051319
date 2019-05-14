# code here!

class School
    
    #attr_accessor 
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.map do |grade, student|
            sorted_roster[grade] = student.sort
        end
        sorted_roster
    end
end