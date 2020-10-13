# controller (model view controller) - takes input from the user and sends the data off to the back end
# Each component can have their individual controllers ()
# But can have one central controller which is what we have on lines 40/41

require './lib/Controller/ui_controller'
require './lib/Controller/board_controller'
class Main

    ui_controller = Controller::UIController.new
    board_controller = Controller::BoardController.new

    ui_controller.print_welcome_and_output_instructions

    continue = ui_controller.get_continue_and_validate
    ui_controller.print_board_or_exit_game(continue)
    
    
    def self.user_turn(ui_controller, board_controller)
        # user inputs coordinate
        location_is_valid = false
    
            until location_is_valid
                
                row_coordinate = ui_controller.get_row_coordinate_and_validate
                column_coordinate = ui_controller.get_column_coordinate_and_validate
                location_is_valid = board_controller.validate_location(row_coordinate, column_coordinate)
                unless location_is_valid  
                    puts "This space is taken - please put your move somewhere else."
                end
            end
        # add board entry once location is valid
        board_controller.add_user_entry(row_coordinate, column_coordinate)
        current_board = board_controller.get_board
        ui_controller.print_current_board(current_board)
    end

    Main.user_turn(ui_controller, board_controller)

   
end


