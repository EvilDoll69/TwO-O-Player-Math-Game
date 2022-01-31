

class Game 
  attr_accessor
  
  def problem()
    print "What does #{rand(1..20)} plus #{rand(1..20)} equal?" #math additional problem
    return rand(1..20) + {rand(1..20)
  end

  input = gets.chomp.to_i

  if problem() == input
    print "Yes! You win" unless "Seriously? No"
end

class P1

  def life(3)
    if 