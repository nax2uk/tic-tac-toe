require_relative 'ui'
require_relative 'board'

ui = UI.new
ui.output_welcome_message
ui.output_instructions
ui.output_next_block

# continue = ui.set_continue


# if continue == 'y'
#     board = Board.new
#     board.prints_empty_board
# end