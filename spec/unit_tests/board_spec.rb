require "./lib/board"

describe Board do
    context "displays empty board" do
        it "displays number coordinates" do
            expect do
                Board.new.prints_number_coord_row
            end.to output("     1   2   3  \n").to_stdout
        end
        it "displays one horizontal line of the board" do
            expect do
                Board.new.prints_horizontal_board_line
            end.to output("   +---+---+---+ \n").to_stdout
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