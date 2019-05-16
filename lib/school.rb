class School

  attr_accessor :roster,:name,:grade

def initialize(arg)
  @roster = {}
  # @grade=grade
end

def add_student(name,grade)
  @roster[grade] ||=[]
  @roster[grade]<<name
end
def grade(grade)
  @roster.each do |key, value|
    if key == grade
      return value
end
end
end
def sort

  @roster.each do |key,value|
    @roster[key]=value.sort
end
end
end
