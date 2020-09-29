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

    def has_won?(array)
        false
        #array = [["X","X","X"], ["","",""], ["","",""]]
    end
end
