require "./lib/UI/board"

describe UI::Board do
    let(:ui_board) {UI::Board.new}

    context "displays empty board" do
        it "displays number coordinates" do
            expect do
                ui_board.prints_number_coord_row
            end.to output("     1   2   3  \n").to_stdout
        end
        it "displays one horizontal line of the board" do
            expect do
                ui_board.prints_horizontal_board_line
            end.to output("   +---+---+---+ \n").to_stdout
        end
        it "displays row A of the board" do
            expect do
                ui_board.prints_row("A")
            end.to output("A  |   |   |   | \n").to_stdout
        end
        it "displays row B of the board" do
            expect do
                ui_board.prints_row("B")
            end.to output("B  |   |   |   | \n").to_stdout
        end
        it "displays row C of the board" do
            expect do
                ui_board.prints_row("C")
            end.to output("C  |   |   |   | \n").to_stdout
        end
        it "displays a full empty board" do
            expect do
                ui_board.prints_empty_board
            end.to output("     1   2   3  \n   +---+---+---+ \nA  |   |   |   | \n   +---+---+---+ \nB  |   |   |   | \n   +---+---+---+ \nC  |   |   |   | \n   +---+---+---+ \n").to_stdout
        end



# "     1   2   3  "
# "   +---+---+---+ "
# "A  | X | O | X | "
# "   +---+---+---+ "
# "B  |   |   |   |"
# "   +---+---+---+ "
# "C  |   |   |   |"
# "   +---+---+---+ "
    end
end