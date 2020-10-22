# normally used for web development single responsibility use cases
# e.g. a class called print_controller then call a method called execute
# wrap things in controller module or put in module that is responsible for the thing that is changing
require './lib/BoardArray/board'
require './lib/Logic/logic'
require './lib/Logic/minimax'

module Controller
    class BoardController
        attr_reader :game_score, :game_is_won
        def initialize
            
            @board = BoardArray::Board.new
            @board_logic = Logic::BoardLogic.new
            @minimax = Logic::Minimax.new
            @game_score = 0
            @game_is_won = false
        end

        def add_user_entry(row, column)
            symbol = "O"
            @board.input_entry(symbol, row, column)
        end

        def add_computer_entry(row, column)
            symbol = "X"
            @board.input_entry(symbol, row, column)
        end

        def add_user_entry_and_check_if_user_won(row, column)
            self.add_user_entry(row, column)
            
            user_has_won = @board_logic.has_won?(row, column, @board)
            if user_has_won
                self.set_game_is_won_and_score(-1)
            end
        end

        def add_computer_entry_and_check_if_computer_won
            result= @minimax.best_move(@board, @board_logic)
            
            row, column = result[0], result[1]
            self.add_computer_entry(row, column)
            computer_has_won = @board_logic.has_won?(row, column, @board)

            if computer_has_won
                self.set_game_is_won_and_score(1)
            end
        end    

        def set_game_is_won_and_score(score)
            @game_is_won = true
            @game_score = score
        end

        def get_board
            @board.board_array
        end

        def validate_location(row, column)
            @board_logic.validate_entry(row, column, @board)
        end
    end
end