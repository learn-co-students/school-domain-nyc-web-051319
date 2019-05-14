# code here!

class School
    attr_accessor :school, :student, :roster, :grade

    

    def initialize(school)
        @roster = {}
        @school = school
    end


    def add_student(student, grade)
        if @roster.key?(grade)
            @roster[grade] << student
        else
            @roster[grade] = [student]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        new_hash =  @roster.each do |k,v|
            @roster[k] = v.sort
        end
        @roster
    end



end