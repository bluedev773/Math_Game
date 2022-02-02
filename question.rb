
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
    if(@response == answer) 
      puts "correct answer"
      true
    else
      puts "incorrect answer"
      false
    end
  end

end

