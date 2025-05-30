class Game
  
  attr_accessor :current_player, :status, :players, :plateau

  

  def initialize(name1, name2)
    @players = []
    @status = "en cours"
    @plateau = Board.new
    @players = [
      Player.new(name1, "O"),
      Player.new(name2, "X")]
    
  end
  

  def turn 
    @status = "en cours"
    
    while @status == "en cours"
      @plateau.screen

      @plateau.play_turn(@players[0])
      @status = @plateau.victory?(@players[0])
      if @status == "victory"
        @current_player = @players[0]
        break
      elsif @status == "nul"
        return @status
      end
      
      @plateau.screen
      @plateau.play_turn(@players[1])
      @status = @plateau.victory?(@players[1])
      if @status == "victory"
        @current_player = @players[1]
        break
      elsif @status == "nul"
        return @status
      end
      
    end
  end


  # if @status == "victory"
  #   return @players[0]
  # else @status == "draw"
  #   return @status

  

  def new_round
    @plateau = Board.new
  end


  def game_end
    if @status == "nul"
      puts "Fin de partie"
      puts "C'est un match nul"
    elsif @status == "victory"
      puts "Fin de partie"
      puts "C'est une victoire de #{@current_player.name}"
    end
  end

end