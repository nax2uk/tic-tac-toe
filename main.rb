# controller (model view controller) - takes input from the user and sends the data off to the back end
# Each component can have their individual controllers ()
# But can have one central controller which is what we have on lines 40/41

require './lib/Controller/ui_controller'

ui_controller = Controller::UIController.new

ui_controller.print_welcome_and_output_instructions

continue = ui_controller.get_continue_and_validate
ui_controller.print_board_or_exit_game(continue)


