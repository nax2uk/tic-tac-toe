require './lib/UI/standard_message'
require './lib/UI/board'
require './lib/UI/continue_message'
require './lib/UI/row_coordinate'
require './lib/UI/column_coordinate'


module Controller
    class UIController
        attr_reader :continue_message, :row_coordinate, :column_coordinate

        def initialize
            @standard_messages = UI::StandardMessage.new
            @board = UI::Board.new
            @continue_message = UI::ContinueMessage.new
            @row_coordinate = UI::RowCoordinate.new
            @column_coordinate = UI::ColumnCoordinate.new

        end

        def print_welcome_and_output_instructions
            @standard_messages.output_welcome_message
            @standard_messages.output_instructions
        end

        def print_game_end_messages(game_score)
            case game_score
                when 1
                    @standard_messages.output_computer_wins_message
                when -1
                    @standard_messages.output_user_wins_message
                else
                    @standard_messages.output_draw_message
            end
        end

        def print_board_or_exit_game(continue)
            if continue == 'Y' || continue == 'y'
                @board.print_empty_board
            elsif continue == 'N' || continue == 'n'
                exit(0)
            end
        end

        def get_input_and_validate(prompt_string, input_type)
            # input_type : row_coord, column_coord, continue etc
            input = ''
            input_is_valid = false

            until input_is_valid
                input = input_type.capture_input(prompt_string).upcase
                input_is_valid = input_type.validate_input(input)
            end
            input
        end

    
        def print_current_board(board)
            @board.print_current_board(board)
        end
    end
end