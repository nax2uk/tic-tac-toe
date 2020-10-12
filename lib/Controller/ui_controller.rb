require './lib/UI/standard_message'
require './lib/UI/board'
require './lib/UI/continue_message'
require './lib/UI/input_coordinate'

module Controller
    class UIController
        def initialize
            @standard_messages = UI::StandardMessage.new
            @board = UI::Board.new
            @continue_message = UI::ContinueMessage.new
            @input_coordinate = UI::InputCoordinate.new
        end

        def print_welcome_and_output_instructions
            @standard_messages.output_welcome_message
            @standard_messages.output_instructions
        end

        def print_board_or_exit_game(continue)
            if continue == 'y'
                @board.prints_empty_board
            elsif continue == 'n'
                exit(true)
            end
        end

        def get_continue_and_validate
            continue = ''
            continue_is_valid = false

            until continue_is_valid
                continue = @continue_message.capture_input
                continue_is_valid = @continue_message.validate_input(continue)
            end
            continue
        end

        def get_row_coordinate_and_validate
            row_coordinate = ''
            row_coordinate_is_valid = false

            until row_coordinate_is_valid
                row_coordinate = @input_coordinate.input_row_coordinate
                row_coordinate_is_valid = @input_coordinate.validate_row_coordinate(row_coordinate)
            end
            row_coordinate
        end

        def get_column_coordinate_and_validate
            column_coordinate = ''
            column_coordinate_is_valid = false

            until column_coordinate_is_valid
                column_coordinate = @input_coordinate.input_column_coordinate
                column_coordinate_is_valid = @input_coordinate.validate_column_coordinate(column_coordinate)
            end
            column_coordinate
        end

    end
end