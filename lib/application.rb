class Application

  def self.perform

    puts "╔" + "═" * 48 + "╗"
    puts "║ 🎮  Bienvenue sur 'Morpion Ultime VI' !          ║"
    puts "║ ⚔️   Prépare-toi à faire mordre la poussière !   ║"
    puts "║ 💥   Bite him !                                  ║"
    puts "╚" + "═" * 48 + "╝"

    puts "⭕️ Joueur 1, choisis ton nom de Morpion Master :"
    print ">>"
    player1=gets.chomp
    
    puts "❌ Joueur 2, choisis ton nom de Morpion Master :"
    print ">>"
    player2=gets.chomp
   
    
    game = Game.new(player1,player2)

    
    begin
      
      choice = "y"
      puts ""

      game.new_round
      game.turn
      game.game_end

      puts "Voulez vous rejouer y/n?"
      print ">>"
      choice = gets.chomp


    end while choice == "y"

  end

end