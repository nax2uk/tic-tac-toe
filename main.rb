require './lib/UI/ui_standard_message'
require './lib/UI/ui_continue_message'
require './lib/UI/ui_board'

def print_board_or_exit_game(continue)
    
    if continue == 'y'
        board = UIBoard.new
        board.prints_empty_board
    elsif continue == 'n'
        exit(true)
    end
end

def ask_continue_and_go_to_next_step
    ui_continue_message = UIContinueMessage.new
    continue = ''
    continue_is_valid = false

    until continue_is_valid
        continue = ui_continue_message.capture_input
        continue_is_valid = ui_continue_message.validate_input(continue)
    end

    # continue_is_valid == true
    print_board_or_exit_game(continue)

end

ui_standard_messages = UIStandardMessage.new
ui_standard_messages.output_welcome_message
ui_standard_messages.output_instructions
ask_continue_and_go_to_next_step



