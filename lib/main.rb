require_relative 'tic_tac_toe'
require_relative 'board'

tic_tac_toe = TicTacToe.new
tic_tac_toe.output_welcome_message
tic_tac_toe.output_instructions

board = Board.new
board.prints_number_coord_row
board.prints_horizontal_board_line