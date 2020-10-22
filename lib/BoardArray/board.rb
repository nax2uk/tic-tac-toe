module BoardArray
    class Board 
        attr_accessor :board_array
        attr_reader :max_turns
        

        def initialize 
            @board_array = Array.new(5) {Array.new(5, " ")}
            @max_turns = 25
        end


        ROW = {
                'A'=> 0,
                'B'=> 1,
                'C'=> 2,
                'D'=> 3,
                'E'=> 4
        }.freeze

        COL = {
                '1'=> 0,
                '2'=> 1,
                '3'=> 2,
                '4'=> 3,
                '5'=> 4
        }.freeze 

        def input_entry(symbol, row, column)
            @board_array[ROW[row]][COL[column]] = symbol
        end

        def get_entry(row, column)
            @board_array[ROW[row]][COL[column]].dup
        end

        # method created for testing purposes.
        def get_board_row_object_id(row)
            @board_array[ROW[row]].object_id
        end

        def get_row(row)
            @board_array[ROW[row]].dup
        end

        def get_column(column)
            column_array = Array.new(5, " ") 
            column_array.each_index do |i|
                column_array[i] = @board_array[i][COL[column]].dup
            end
            return column_array
        end

        def get_left_diagonal
            diagonal_array = Array.new(5, " ")
            diagonal_array[0] = board_array[ROW["A"]][COL["1"]]
            diagonal_array[1] = board_array[ROW["B"]][COL["2"]]
            diagonal_array[2] = board_array[ROW["C"]][COL["3"]]
            diagonal_array[3] = board_array[ROW["D"]][COL["4"]]
            diagonal_array[4] = board_array[ROW["E"]][COL["5"]]
            diagonal_array
        end

        def get_right_diagonal
            diagonal_array = Array.new(5, " ")
            diagonal_array[0] = board_array[ROW["A"]][COL["5"]]
            diagonal_array[1] = board_array[ROW["B"]][COL["4"]]
            diagonal_array[2] = board_array[ROW["C"]][COL["3"]]
            diagonal_array[1] = board_array[ROW["D"]][COL["2"]]
            diagonal_array[2] = board_array[ROW["E"]][COL["1"]]
            diagonal_array
        end
    end
end
