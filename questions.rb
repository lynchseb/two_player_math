class Questions
  attr_accessor :first_number, :second_number
  def initialize
    @first_number = rand(1..20)
    @second_number = rand(1..20)
  end

  def get_question
  "What does #{@first_number} + #{@second_number} equal?"
  end

  def get_answer
    @first_number + @second_number
  end
end

# g = Questions.new

# g.get_question
# g.get_answer