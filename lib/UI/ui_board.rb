#PRESENTER - handles inputs and outputs to UI ONLY
#Can have a separate UI presenter class that takes responsibility to send those details out to different UI classes

#require 'colorize'
#prints board to UI
class UIBoard
# "     1   2   3  "
# "   +---+---+---+ "
# "A  | X | O | X | "
# "   +---+---+---+ "
# "B  |   |   |   |"
# "   +---+---+---+ "
# "C  |   |   |   |"
# "   +---+---+---+ "

    def prints_number_coord_row
        puts "     1   2   3  "
        # puts "     1   2   3  ".bold.blue
    end

    def prints_horizontal_board_line
        puts "   +---+---+---+ \n"
    end

    def prints_row(row)
        puts "#{row}  |   |   |   | \n"
    end

    #Private methods - no one should care about them, including the tests
    #Anything we want be private to the client(i.e. the user) but public to us, can be put in a seperate class. 
    def prints_empty_board
        self.prints_number_coord_row
        self.prints_horizontal_board_line
        self.prints_row("A")
        self.prints_horizontal_board_line
        self.prints_row("B")
        self.prints_horizontal_board_line
        self.prints_row("C")
        self.prints_horizontal_board_line
    end
    # def print_current_board
    #     self.prints_number_coord
    #     self.prints_horizontal_board_line
    #   #  self.print_row("A")
    #     self.prints_horizontal_board_line
    #   #  self.print_row("B")
    #     self.prints_horizontal_board_line
    #   #  self.print_row("C")
    #     self.prints_horizontal_board_line
    # end
end