# normally used for web development single responsibility use cases
# e.g. a class called print_controller then call a method called execute
# wrap things in controller module or put in module that is responsible for the thing that is changing
require './lib/BoardArray/board'

module Controller
    class BoardController

        def initialize
            @board = BoardArray::Board.new
        end

        def add_user_entry(row, column)
            symbol = "O"
            @board.input_entry(symbol, row, column)
        end

        def get_board
            @board.board_array
        end

    end
end