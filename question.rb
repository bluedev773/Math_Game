
class Question

  def initialize
    @question = ""
    @answer =  ""
  end

  def generate_question
    random_number_one = rand(1..20)
    random_number_two = rand(1..20)
    @question = "What is #{random_number_one} + #{random_number_two}?"
    @answer = random_number_one + random_number_two
  end

end

question = Question.new
question.generate_question
p question