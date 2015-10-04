class Question

  attr_reader :problem,:answer,:choices

  def initialize(problem,answer,choices)
    @problem = problem
    @answer = answer
    @choices = choices
  end

end
