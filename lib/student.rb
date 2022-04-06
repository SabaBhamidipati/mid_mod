class Student
  attr_reader :name, :age, :scores

  def initialize(attributes)
    @name = attributes[:name]
    @age = attributes[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    @scores.sum / @scores.length.to_f
    # require 'pry'; binding.pry
  end
end
