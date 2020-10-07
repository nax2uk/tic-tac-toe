# controller (model view controller) - takes input from the user and sends the data off to the back end
# Each component can have their individual controllers ()
# But can have one central controller which is what we have on lines 40/41

require './lib/Controller/start_game'
require './lib/Controller/print_board_or_exit_game'
require './lib/Controller/continue'

# move to controller
class Main
    Controller::StartGame.new.print_welcome_and_output_instructions
    continue = Controller::Continue.new.get_continue
    Controller::PrintBoardOrExitGame.new.execute(continue)
end
