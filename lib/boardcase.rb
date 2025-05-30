class BoardCase
    attr_accessor :id, :value #:symbol
    

    def initialize(id, value)
        @id = id  # Ex: "A1"
        # @symbol = "" # " " vide ou symbol
        @value = value
    
    end

  end