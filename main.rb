require './lib/UI/ui_standard_messages'
require './lib/UI/ui_board'

ui_standard_messages = UIStandardMessages.new
board = UIBoard.new
ui_standard_messages.output_welcome_message
ui_standard_messages.output_instructions


















# ask_continue_and_go_to_next_step

# # continue = ui.set_continue

# # if continue == 'y'
# #     board = Board.new
# #     board.prints_empty_board
# # end

# ## notes


# def ask_continue_and_go_to_next_step
#     continue = ''
#     continue_is_valid = false

#     until continue_is_valid
#         continue = ContinueMessage.capture_input
#         continue_is_valid = ContinueMessage.validate_input(continue)
#     end

#     # continue_is_valid == true
#     print_board_or_exit_game(continue)

# end

# def print_board_or_exit_game(continue)
#     if continue == 'y'
#         board.prints_empty_board
#     elsif continue == 'n'
#         exit(true)
#     end
# end





continue(ui.print_continue_message)

def continue(continue)
    if continue == 'y'
        board = Board.new
        board.prints_empty_board
    elsif continue == 'n'
    #     exit main/gam
    else 
        puts "Please enter y or n."
        # print_continue_message
    end
end