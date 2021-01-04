class Player
  attr_accessor :name, :isTurn, :lives

  def initialize(name)
    @name = name
    @isTurn = false
    @lives = 3
  end

  def is_turn?
    @isTurn
  end

  def set_turn
    if @isTurn ? @isTurn = false : @isTurn = true 
    end
  end

  def check_life
    return @lives > 0
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




