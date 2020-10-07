# controller (model view controller) - takes input from the user and sends the data off to the back end
# Each component can have their individual controllers ()
# But can have one central controller which is what we have on lines 40/41

require './lib/UI/standard_message'
require './lib/UI/continue_message'
require './lib/UI/board'

#  move to controller
def print_board_or_exit_game(continue)
    
    if continue == 'y'
        board = UI::Board.new
        board.prints_empty_board
    elsif continue == 'n'
        exit(true)
    end
end
# move to controller
def print_continue_and_go_to_next_step
    ui_continue_message = UI::ContinueMessage.new
    continue = ''
    continue_is_valid = false

    until continue_is_valid
        continue = ui_continue_message.capture_input
        continue_is_valid = ui_continue_message.validate_input(continue)
    end

    # continue_is_valid == true
    print_board_or_exit_game(continue)

end

# move to controller
def print_welcome_and_output_instructions
    ui_standard_messages = UI::StandardMessage.new
    ui_standard_messages.output_welcome_message
    ui_standard_messages.output_instructions
end

print_welcome_and_output_instructions
print_continue_and_go_to_next_step



