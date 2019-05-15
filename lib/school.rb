class School

  attr_accessor :name, :grade, :roster

  def initialize(hash)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster.select do |key, value|
      if key == grade
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
