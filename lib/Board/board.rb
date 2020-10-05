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
        @board_array[ROW[row]].dup
    end

    def get_column(column)
    
        column_array = Array.new(3, "") 
        # if @board_array[1][COL[column]] == "X"
        #     column_array[1] = "X"
        # elsif @board_array[1][COL[column]] == "O"
        #     column_array[1] = "O"
        # elsif @board_array[2][COL[column]] == "X"
        #     column_array[2] = "X" 
        # elsif @board_array[2][COL[column]] == "O"
        #     column_array[2] = "O"
        # end
        column_array[0] = @board_array[0][COL[column]] 
        column_array[1] = @board_array[1][COL[column]] 
        column_array[2] = @board_array[2][COL[column]] 
    
        return column_array
     
    end
end
