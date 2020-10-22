#PRESENTER - handles inputs and outputs to UI ONLY
#Can have a separate UI presenter class that takes responsibility to send those details out to different UI classes

#require 'colorize'
#prints board to UI
module UI
    class Board
    # "     1   2   3  "
    # "   +---+---+---+ "
    # "A  | X | O | X | "
    # "   +---+---+---+ "
    # "B  |   |   |   |"
    # "   +---+---+---+ "
    # "C  |   |   |   |"
    # "   +---+---+---+ "

    # row[5]
    # row[9]
    # row[13]

        def print_number_coord_row
            puts "     1   2   3   4   5"
        end

        def print_horizontal_board_line
            puts "   +---+---+---+---+---+ \n"
        end

        def print_empty_row(row)
            puts "#{row}  |   |   |   |   |   | \n"
        end

        #Private methods - no one should care about them, including the tests
        #Anything we want be private to the client(i.e. the user) but public to us, can be put in a seperate class. 
        def print_empty_board
            self.print_number_coord_row
            self.print_horizontal_board_line
            self.print_empty_row("A")
            self.print_horizontal_board_line
            self.print_empty_row("B")
            self.print_horizontal_board_line
            self.print_empty_row("C")
            self.print_horizontal_board_line
            self.print_empty_row("D")
            self.print_horizontal_board_line
            self.print_empty_row("E")
            self.print_horizontal_board_line
        end

        def print_row(row, row_array)
            row_string = "#{row}  |   |   |   |   |   | \n"
            row_string[5] = row_array[0]
            row_string[9] = row_array[1]
            row_string[13] = row_array[2]
            row_string[17] = row_array[3]
            row_string[21] = row_array[4]
            puts row_string
        end
        def print_current_board(board)
            self.print_number_coord_row
            self.print_horizontal_board_line
            self.print_row("A", board[0])
            self.print_horizontal_board_line
            self.print_row("B", board[1])
            self.print_horizontal_board_line
            self.print_row("C", board[2])
            self.print_horizontal_board_line
            self.print_row("D", board[3])
            self.print_horizontal_board_line
            self.print_row("E", board[4])
            self.print_horizontal_board_line
        end
    end
end