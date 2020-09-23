#require 'colorize'

class Board
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