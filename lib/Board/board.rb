class Board 
    attr_accessor :board_array

    def initialize 
        @board_array = Array.new(3) {Array.new(3, "")} 
    end

    def input_entry(symbol, row, column)
        if row == "A"
            @board_array[0][column.to_i - 1] = symbol
        end
        if row == "B"
            @board_array[1][column.to_i - 1] = symbol
        end
        if row == "C"
            @board_array[2][column.to_i - 1] = symbol
        end
    end
end
