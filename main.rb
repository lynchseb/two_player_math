require "./players.rb"
require "./questions.rb"
require "./game.rb"

game = Game.new

puts "Welcome to our 2 player game, please write the name of the first player."
player1_name = gets.chomp
game.check_player1(player1_name)
    
player2_name = gets.chomp
game.check_player2(player2_name)
    
puts "Initializing game environment now, loading in #{player1_name} and #{player2_name}...prepare to learn simple addition!"

game.player1.name = player1_name
game.player2.name = player2_name

game.start_game
    


# new_game = Game.new
# new_game.generate_players
# new_game.start_game



