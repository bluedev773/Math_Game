
class Question
  attr_accessor :question, :answer, :response

  def initialize
    @question = ""
    @answer =  ""
    @respone = ""
  end

  def generate_question
    random_number_one = rand(1..20)
    random_number_two = rand(1..20)
    @question = "What is #{random_number_one} + #{random_number_two}?"
    @answer = random_number_one + random_number_two
  end

  def get_response
    @response = gets.chomp.to_i
  end

  def check_answer
    @response == answer ? (puts 'correct answer') : (puts 'incorrect answer')
  end

  

end

# question = Question.new
# question.generate_question
# puts question.question
# puts question.answer
# question.check_answer(13)