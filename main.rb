# controller (model view controller) - takes input from the user and sends the data off to the back end
# Each component can have their individual controllers ()
# But can have one central controller which is what we have on lines 40/41

require './lib/Controller/ui_controller'
require './lib/Controller/board_controller'
class Main

    def initialize
        @ui_controller = Controller::UIController.new
        @board_controller = Controller::BoardController.new
    end

    def get_valid_coordinates
        # user inputs coordinate
        location_is_valid = false
        until location_is_valid
            
            row_coordinate = @ui_controller.get_input_and_validate("Please input row coordinate of 'O':", @ui_controller.row_coordinate)
            column_coordinate = @ui_controller.get_input_and_validate("Please input column coordinate of 'O':", @ui_controller.column_coordinate)
            location_is_valid = @board_controller.validate_location(row_coordinate, column_coordinate)
            unless location_is_valid  
                @ui_controller.print_output_space_is_taken_message
            end
        end
        return [row_coordinate, column_coordinate]
    end

    def execute
        turn = 0
        @ui_controller.print_welcome_and_output_instructions

        continue = @ui_controller.get_input_and_validate("Do you want to continue? y/n: ", @ui_controller.continue_message)
        @ui_controller.print_board_or_exit_game(continue)
    
        until @board_controller.game_is_won == true || turn == @board_controller.max_turns
            if turn % 2 == 0
                coordinates = self.get_valid_coordinates
                row, col = coordinates[0], coordinates[1]
                @board_controller.add_user_entry_and_check_if_user_won(row, col)
            elsif turn % 2 == 1
                @board_controller.add_computer_entry_and_check_if_computer_won
            end
            current_board = @board_controller.get_board
            @ui_controller.print_current_board(current_board)
            turn += 1
        end
        @ui_controller.print_game_end_messages(@board_controller.game_score)
    end
end

main = Main.new
main.execute


