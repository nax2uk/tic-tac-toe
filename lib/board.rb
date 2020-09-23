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
        puts "     1   2   3  \n"
    end
    def prints_horizontal_board_line
        puts "   +---+---+---+ \n"
    end
    def prints_row_A 
        puts "A  |   |   |   | \n"
    end
    # def print_2nd_row 
    #     puts "B|   |   |   |   |"
    # end
    # def print_3rd_row 
    #     puts "C|   |   |   |   |"
    # end
    # def prints_empty_board
    #     self.prints_number_coord
    #     self.prints_horizontal_board_line
    #     self.print_row("A")
    #     self.prints_horizontal_board_line
    #     self.print_row("B")
    #     self.prints_horizontal_board_line
    #     self.print_row("C")
    #     self.prints_horizontal_board_line
    # end
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