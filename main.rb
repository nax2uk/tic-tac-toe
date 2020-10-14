# controller (model view controller) - takes input from the user and sends the data off to the back end
# Each component can have their individual controllers ()
# But can have one central controller which is what we have on lines 40/41

require './lib/Controller/ui_controller'
require './lib/Controller/board_controller'
class Main
    def self.get_coordinates_and_validate_location_is_available(ui_controller, board_controller)
        location_is_valid = false
        until location_is_valid
            
            row_coordinate = ui_controller.get_input_and_validate("Please input row coordinate of 'O':", ui_controller.row_coordinate)
            column_coordinate = ui_controller.get_input_and_validate("Please input column coordinate of 'O':", ui_controller.column_coordinate)
            location_is_valid = board_controller.validate_location(row_coordinate, column_coordinate)
            unless location_is_valid  
                ui_controller.print_message("This space is taken - please put your move somewhere else.")
            end
        end
        [row_coordinate, column_coordinate]
    end

    ui_controller = Controller::UIController.new
    board_controller = Controller::BoardController.new

    ui_controller.print_welcome_and_output_instructions

    continue = ui_controller.get_input_and_validate("Do you want to continue? y/n: ", ui_controller.continue_message)
    ui_controller.print_board_or_exit_game(continue)
    
    turn = 1
    MAX_TURNS = 9
    until board_controller.game_is_won || turn > MAX_TURNS
        if turn % 2 == 1 
            coordinates = Main.get_coordinates_and_validate_location_is_available(ui_controller, board_controller)
            row_coordinate, column_coordinate = coordinates[0], coordinates[1]
            # add board entry once location is valid
            board_controller.add_user_entry_and_check_if_user_won(row_coordinate, column_coordinate)

        else
            board_controller.add_computer_entry_and_check_if_computer_won

        end
        current_board = board_controller.get_board
        ui_controller.print_current_board(current_board)
        turn = turn + 1
    end

    case board_controller.game_score
    when -1
        ui_controller.print_message("Well done, you have won!")
    when 1
        ui_controller.print_message("Too bad you lose!")
    else
        ui_controller.print_message("Wow! It is a draw")
    end


end
