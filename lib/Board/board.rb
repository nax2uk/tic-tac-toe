class Board 
    attr_accessor :board_array

    def initialize 
        @board_array = Array.new(3) {Array.new(3, "")}
    end

    def input_entry(symbol, row, column)
        [["X","",""], ["","",""], ["","",""]]
    end
end
