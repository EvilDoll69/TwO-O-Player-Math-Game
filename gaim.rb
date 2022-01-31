require "./players.rb"
class Game 

  attr_accessor :current_player

  def initialize
    @current_player = 1
  end

  def run_game
    
    player1 = Players.new("player1")
    player2 = Players.new("player2")
    @current_player = player1

    while @current_player.life > 0 do

      puts "----------NEW TURN-------------" 
      
      new_question = Question.new
      new_question.assignment
      print ">"
      input = gets.chomp.to_i

      if input == new_question.num1 + new_question.num2
        puts "Yes! You win!" 
      else
          puts @current_player.life -= 1
          puts "Seriously? You are wrong!"
      end

      puts "Player1 #{player1.life}/3 vs Player2 #{player2.life}/3"   

      if @current_player.name == player1.name
        @current_player = player2
      else @current_player = player1
      end   
      
      winner = ""
      winner_lives = 0

      if player1.life == 0
        winner = player2.name
        winner_lives = player2.life
        puts "#{winner} wins with a score of #{winner_lives}"
        puts "------GAME OVER-------"   
        puts "Good Bye!"
        exit(0)
      end
       
      if player2.life == 0
        winner = player1.name
        winner_lives = player1.life
        puts "#{winner} wins with a score of #{winner_lives}"
        puts "------GAME OVER-------"   
        puts "Good Bye!"
        exit(0)        
      end
    end
  end
end

