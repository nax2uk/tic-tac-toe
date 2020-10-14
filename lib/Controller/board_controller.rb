# normally used for web development single responsibility use cases
# e.g. a class called print_controller then call a method called execute
# wrap things in controller module or put in module that is responsible for the thing that is changing
require './lib/BoardArray/board'
require './lib/Logic/logic'
module Controller
    class BoardController
        attr_reader :game_score
        def initialize
            @board = BoardArray::Board.new
            @board_logic = Logic::BoardLogic.new
            @game_score = 100
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
        
        def has_user_won?(row, column)
            user_has_won = @board_logic.has_won?(row, column, @board)
            if user_has_won
                @board_logic.game_has_ended = true
                @game_score = -1
            elsif @board_logic.board_is_full?(@board)
                @board_logic.game_has_ended = true
                @game_score = 0  
            end
            user_has_won
        end
    
        def get_computer_turn
            best_move = @board_logic.get_best_move(@board)
            
            row = best_move[0] 
            column = best_move[1]
            @board.input_entry('X',row, column)

            if @board_logic.has_won?(row, column, @board)
                @board_logic.game_has_ended = true
                @game_score = 1
            end
        end

        def game_has_ended
            @board_logic.game_has_ended
        end
    end
end