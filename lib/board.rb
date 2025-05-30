
require 'matrix'
require_relative 'boardcase'

class Board

  attr_accessor :grid 

  def initialize
  @grid = {}
  
  
    ["A", "B", "C"].each do |lettre|
      (1..3).each do |i|
        case_id = "#{lettre}#{i}"
        @grid[case_id] = BoardCase.new(case_id,"")
        # objet = BoardCase.new(case_id,  "")
        # @grid << objet
      end
    end

    

  end

  def screen
  
    puts "  1 2 3"
    ["A", "B", "C"].each do |lettre|
      line = @grid.select { |id, case_obj| id.start_with?(lettre) }
      print "#{lettre} "
      puts line.map { |_, case_obj| case_obj.value.empty? ? " " : case_obj.value }.join("|")
      puts " --+-+--" unless lettre == "C"
    end
  end
  

  def play_turn(player)

    valid = false
      

      while !valid
        puts "#{player.name} choisis ta case"
        print "> "
        placement = gets.chomp.upcase
        
        
       maj_case = @grid[placement]

        if maj_case.nil?
          puts "Case invalide. Essaie encore."
        elsif maj_case.value != ""
          puts "Case déjà prise !"
        else
          maj_case.value = player.symbol
          puts "#{player.name} a joué #{player.symbol} en #{placement}"
          valid = true
        end
      end
  end
  

  def victory?(player)
    cases_win = [["A1","A2","A3"],["B1","B2","B3"],["C1","C2","C3"],["A1","B2","C3"],["A3","B2","C1"],["A1","B1","C1"],["A2","B2","C2"],["A3","B3","C3"]]
  
    if cases_win.any? { |combo| combo.all? { |id| @grid[id].value == player.symbol } }
      return "victory"
    elsif @grid.values.all? { |cell| cell.value != "" }
      return "nul"
    else
      return "en cours"
    end

  end
  
end







# .to_a.join(" | ")