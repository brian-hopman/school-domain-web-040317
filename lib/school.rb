require 'pry'

class School

  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)

    #binding.pry
    roster[grade] ||= []
    roster[grade] << student
    #binding.pry
  end

  def grade(name)
    roster[name]
  end

  def sort
    sorted = {}
      roster.each do |grade, student|
        sorted[grade] = student.sort
      end
      sorted
  end
end
