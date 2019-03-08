require 'pry'

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
    @roster[grade]
  end
  
  def roster
    @roster 
  end
  
  def sort
    @roster.each do |grade, students|
      #binding.pry
      @roster[grade]=students.sort
    end
  end



end

#school = School.new("Bayside High School")
#school.add_student("Zach Morris", 9)
#school.roster