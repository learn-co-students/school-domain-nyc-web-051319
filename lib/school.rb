class School
    attr_accessor :name, :roster, :grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
      @student = student
      @grade = grade
      @roster[grade] ||= []
      @roster[grade] << student
    end
    def grade(grade)
      roster[grade]
    end
    def sort
      hash = {}
      roster.each do |k, v|
        hash[k] = v.sort
      end
      hash
    end
end
