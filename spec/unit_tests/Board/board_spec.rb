require './lib/Board/board'

describe Board do
    let(:board) {Board.new}

    context "#initialize" do
        it "creates a new board that is a 3x3 array" do
            expect(board.board_array).to eq([["","",""], ["","",""], ["","",""]])
        end
    end
    context "#input_entry" do
        it "takes in an entry and adds it into the board array" do
            expect(board.input_entry("X", "A", "1")).to eq([["X","",""], ["","",""], ["","",""]])
        end
    end
end