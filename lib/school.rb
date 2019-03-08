class School
  
  @roster = {}
  
  attr_accessor :name, :grade, :roster 

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @roster[grade] ||= []
    @roster[grade] << name   
    
  end
  
  def grade(grade)
    @grade = grade
  end
  
  def roster
    @roster #<< add_student
  end



end

#school = School.new("Bayside High School")
#school.add_student("Zach Morris", 9)
#school.roster