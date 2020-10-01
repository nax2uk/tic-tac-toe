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

    COL = {
            '1'=> 0,
            '2'=> 1,
            '3'=> 2
    }.freeze 

    def input_entry(symbol, row, column)
        @board_array[ROW[row]][COL[column]] = symbol
    end

    # method created for testing purposes.
    def get_board_row_object_id(row)
        @board_array[ROW[row]].object_id
    end

    def get_row(row)
        row_array = @board_array[ROW[row]].dup
    end
end
