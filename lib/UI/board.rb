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

        def prints_number_coord_row
            puts "     1   2   3  "
        end

        def prints_horizontal_board_line
            puts "   +---+---+---+ \n"
        end

        def prints_empty_row(row)
            puts "#{row}  |   |   |   | \n"
        end

        #Private methods - no one should care about them, including the tests
        #Anything we want be private to the client(i.e. the user) but public to us, can be put in a seperate class. 
        def prints_empty_board
            self.prints_number_coord_row
            self.prints_horizontal_board_line
            self.prints_empty_row("A")
            self.prints_horizontal_board_line
            self.prints_empty_row("B")
            self.prints_horizontal_board_line
            self.prints_empty_row("C")
            self.prints_horizontal_board_line
        end

        def prints_row(row, row_array)
            row_string = "#{row}  |   |   |   | \n"
            row_string[5] = row_array[0]
            row_string[9] = row_array[1]
            row_string[13] = row_array[2]
            puts row_string
        end
        def prints_current_board(board)
            self.prints_number_coord_row
            self.prints_horizontal_board_line
            self.prints_row("A", board[0])
            self.prints_horizontal_board_line
            self.prints_row("B", board[1])
            self.prints_horizontal_board_line
            self.prints_row("C", board[2])
            self.prints_horizontal_board_line
        end
    end
end