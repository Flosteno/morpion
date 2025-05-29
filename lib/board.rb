require 'matrix'
class Board

  attr_accessor :grid
  
  def initialize
    @grid = Matrix.columns([
    [" ", " ", " "],
    [" ", " ", " "],
    [" ", " ", " "]
  ])
  end

  def screen
    3.times do |i|
    puts @grid.row(i)
    puts "--+---+--" unless i == 2
  end
  nil
end
end

# .to_a.join(" | ")