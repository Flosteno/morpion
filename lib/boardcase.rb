class BoardCase
    attr_accessor :id, :value #:symbol
    @@players = 0
    def initialize(id, value)
        @id = id  # Ex: "A1"
        # @symbol = "" # " " vide ou symbol
        @value = value
        @@players += 1

        
    end

  end