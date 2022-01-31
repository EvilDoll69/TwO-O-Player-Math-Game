class Question 
  attr_accessor :num1, :num2
  
  def initialize 
    @num1 = rand(21)
    @num2 = rand(1..20)
  end

  def assignment
    puts "What does #{@num1} plus #{@num2} equal?"
  end
end


# puts new_question.assignment
# puts new_question.num2

