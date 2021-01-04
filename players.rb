class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    # @isTurn = false
    @lives = 3
  end

  def check_life
    return @lives > 0
  end

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
  
  def remove_player_life
    @lives -=1
    if @lives == 0
      puts "#{@name} has perished"
    elsif @lives == 1
      puts "#{@name} has #{@lives} life remaining"
    else 
      puts "#{@name} has #{@lives} lives remaining"
    end
  end
end



# player1 = Player.new("Fred")
# player2 = Player.new("George")

# puts player1.name

# puts player1.is_turn?
# player1.set_turn
# # puts player1.check_lives
# puts player1.remove_player_life
# puts player1.check_life
# puts player1.remove_player_life
# puts player1.check_life
# puts player1.remove_player_life
# puts player1.check_life

# puts player2.remove_player_life




