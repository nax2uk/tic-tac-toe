require "./lib/UI/board"

describe UI::Board do
    let(:ui_board) {UI::Board.new}

    context "displays empty board" do
        it "displays number coordinates" do
            expect do
                ui_board.print_number_coord_row
            end.to output("     1   2   3  \n").to_stdout
        end
        it "displays one horizontal line of the board" do
            expect do
                ui_board.print_horizontal_board_line
            end.to output("   +---+---+---+ \n").to_stdout
        end
        it "displays row A of the board" do
            expect do
                ui_board.print_empty_row("A")
            end.to output("A  |   |   |   | \n").to_stdout
        end
        it "displays row B of the board" do
            expect do
                ui_board.print_empty_row("B")
            end.to output("B  |   |   |   | \n").to_stdout
        end
        it "displays row C of the board" do
            expect do
                ui_board.print_empty_row("C")
            end.to output("C  |   |   |   | \n").to_stdout
        end
        it "displays a full empty board" do
            expect do
                ui_board.print_empty_board
            end.to output("     1   2   3  \n   +---+---+---+ \nA  |   |   |   | \n   +---+---+---+ \nB  |   |   |   | \n   +---+---+---+ \nC  |   |   |   | \n   +---+---+---+ \n").to_stdout
        end
    end

    context "#print_row" do
        it "print the first row of the board with 1 element" do
            #Arrange
            board_array = [["O"," "," "],[" "," "," "],[" "," "," "]]
            #Act & Assert
            expect do
                ui_board.print_row("A", board_array[0])
            end.to output("A  | O |   |   | \n").to_stdout
        end
        it "print the first row of the board with 2 elements" do
            #Arrange
            board_array = [["O","X"," "],[" "," "," "],[" "," "," "]]
            #Act & Assert
            expect do
                ui_board.print_row("A", board_array[0])
            end.to output("A  | O | X |   | \n").to_stdout
        end
        it "print the first row of the board with 3 elements" do
            #Arrange
            board_array = [["O","X","O"],[" "," "," "],[" "," "," "]]
            #Act & Assert
            expect do
                ui_board.print_row("A", board_array[0])
            end.to output("A  | O | X | O | \n").to_stdout
        end
        it "print the second row of the board with 3 elements" do
            #Arrange
            board_array = [["O", "X", "O"],["X","X","O"],[" "," "," "]]
            #Act & Assert
            expect do
                ui_board.print_row("B", board_array[1])
            end.to output("B  | X | X | O | \n").to_stdout
        end
    end
    context "#print_current_board" do
        it "" do
            #Arrange 
            board_array = [["O", "X", "O"],["X","X","O"],[" "," "," "]]
            #Act & Assert
            expect do
                ui_board.print_current_board(board_array)
            end.to output("     1   2   3  \n   +---+---+---+ \nA  | O | X | O | \n   +---+---+---+ \nB  | X | X | O | \n   +---+---+---+ \nC  |   |   |   | \n   +---+---+---+ \n").to_stdout
        end
    end

end


# "     1   2   3  "
# "   +---+---+---+ "
# "A  | X | O | X | "
# "   +---+---+---+ "
# "B  |   |   |   |"
# "   +---+---+---+ "
# "C  |   |   |   |"
# "   +---+---+---+ "