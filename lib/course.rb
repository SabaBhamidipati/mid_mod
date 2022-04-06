class Course
attr_reader :name, :capacity, :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @full = false
  end

  def full?
    if @students.length >= 2
      @full = true
    else
      @full
    end
  end

  def enroll(student)
    @students << student
    # require 'pry'; binding.pry
  end
end
