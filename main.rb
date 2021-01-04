require "./players.rb"
require "./questions.rb"
# require "./game.rb"

def check_player1(player1_name)
      if !@player1_name.empty?
      puts "Thank you player1 is #{@player1_name}, please write the name of the second player."
      else
      puts "You must enter a player name"
      @player1_name = gets.chomp
      check_player1(player1_name)
      end
    end
    
    def check_player2(player2_name)
      if !@player2_name.empty?
      puts "Thank you player2 is #{@player2_name}"
      else
      puts "You must enter a player name"
      @player2_name = gets.chomp
      check_player2(player2_name)
      end
    end
    
    puts "Welcome to our 2 player game, please write the name of the first player."
    @player1_name = gets.chomp
    check_player1(@player1_name)
    
    @player2_name = gets.chomp
    check_player2(@player2_name)
    
    puts "Initializing game environment now, loading in #{@player1_name} and #{@player2_name}...prepare to learn simple addition!"
    player1 = Player.new(@player1_name)
    player2 = Player.new(@player2_name)
    
  
    

    turn = 0
    
    while (player1.check_life && player2.check_life) do
      current_player = (turn % 2 == 0) ? player1 : player2
      other_player = (turn % 2 == 0) ? player2 : player1
      puts "---------- NEW TURN ----------"
      question = Questions.new
      puts "#{current_player.name}: #{question.get_question}"
      answer = gets.chomp
      if question.get_answer == answer.to_i
        puts "Great job #{current_player.name} you're a genius"
        puts "#{current_player.name}: #{current_player.lives}/3 vs #{other_player.name}: #{other_player.lives}/3"
        turn += 1
      else
        puts "Fool of a took! The answer was #{question.get_answer}: #{current_player.name} loses a life...sucka!"
        current_player.remove_player_life
        puts "#{current_player.name}: #{current_player.lives}/3 vs #{other_player.name}: #{other_player.lives}/3"
        turn += 1
      end
    
      if player1.check_life == false
        puts "---------- VICTORY ----------"
        puts "#{player2.name} has won the game with #{player2.lives}/3 lives remaining"
        puts "---------- GAME OVER ----------"
      elsif player2.check_life == false
        puts "---------- VICTORY ----------"
        puts "#{player1.name} has won the game with #{player1.lives}/3 lives remaining"
        puts "---------- GAME OVER ----------"
      end
    end

# new_game = Game.new
# new_game.generate_players
# new_game.start_game



