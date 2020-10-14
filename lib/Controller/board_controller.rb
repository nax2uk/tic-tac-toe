# normally used for web development single responsibility use cases
# e.g. a class called print_controller then call a method called execute
# wrap things in controller module or put in module that is responsible for the thing that is changing
require './lib/BoardArray/board'
require './lib/Logic/logic'
module Controller
    class BoardController
        attr_reader :game_score, :game_is_won
        def initialize
            @board = BoardArray::Board.new
            @board_logic = Logic::BoardLogic.new
            @game_score = 100
            @game_is_won = false
        end

        def get_board
            @board.board_array
        end

        def validate_location(row, column)
            @board_logic.validate_entry(row, column, @board)
        end

        def add_user_entry_and_check_if_user_won(row, column)
            self.add_user_entry(row, column)
            
            user_has_won = self.has_user_won?(row, column)
            if user_has_won
                self.set_game_is_won_and_score(-1)
            end
        end
  
        def add_computer_entry_and_check_if_computer_won
            best_move = @board_logic.get_best_move(@board)
            
            row, column = best_move[0] , best_move[1]
            self.add_computer_entry(row, column)
            computer_has_won = self.has_computer_won?(row, column)

            if computer_has_won
                self.set_game_is_won_and_score(1)
            end
        end    

        def set_game_is_won_and_score(score)
            @game_is_won = true
            @game_score = score
        end

        def add_user_entry(row, column)
            @board.input_entry('O', row, column)
        end
        def has_user_won?(row, column)
          @board_logic.has_won?(row, column, @board)
        end

        def add_computer_entry(row, column)
            @board.input_entry('X', row, column)
        end
        def has_computer_won?(row, column)
            @board_logic.has_won?(row, column, @board)
        end



    end
end