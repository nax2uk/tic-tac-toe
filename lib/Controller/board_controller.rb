# normally used for web development single responsibility use cases
# e.g. a class called print_controller then call a method called execute
# wrap things in controller module or put in module that is responsible for the thing that is changing
require './lib/BoardArray/board'
require './lib/Logic/logic'
module Controller
    class BoardController

        def initialize
            @board = BoardArray::Board.new
            @board_logic = Logic::BoardLogic.new
        end

        def add_user_entry(row, column)
            symbol = "O"
            @board.input_entry(symbol, row, column)
        end

        def get_board
            @board.board_array
        end

        def validate_location(row, column)
            @board_logic.validate_entry(row, column, @board)
        end

        # def validate_location(row, column)
        #     coordinate_location_is_valid = false

        #     until coordinate_location_is_valid
        #         column_coordinate_is_valid = @board_logic.validate_entry(row, column)
        #     end
        #     column_coordinate
         
        # end

    end
end