class Board 
    attr_accessor :board_array

    def initialize 
        @board_array = Array.new(3) {Array.new(3, "")} 
    end

    ROW = {
            'A'=> 0,
            'B'=> 1,
            'C'=> 2
    }.freeze

    def input_entry(symbol, row, column)
        @board_array[ROW[row]][column.to_i - 1] = symbol
    end
end
