require './lib/Board/board'

describe Board do
    let(:board) {Board.new}

    context "#initialize" do
        it "creates a new board that is a 3x3 array" do
            expect(board.board_array).to eq([["","",""], ["","",""], ["","",""]])
        end
    end
    context "#input_entry" do
        it "first entry - takes in an entry and adds it into the board array" do
            board.input_entry("X", "A", "1")
            expect(board.board_array).to eq([["X","",""], ["","",""], ["","",""]])
            # expect(board.input_entry("X", "A", "2")).to eq([["","X",""], ["","",""], ["","",""]])
            # expect(board.input_entry("X", "A", "3")).to eq([["","","X"], ["","",""], ["","",""]])

        end
        it "takes in 2 entries consecutively and adds them to the board array" do
            board.input_entry("X", "A", "1")
            board.input_entry("X", "A", "2")
            expect(board.board_array).to eq([["X","X",""], ["","",""], ["","",""]])
        end

        it "takes in 1 entry and adds it to location (B, 1) in the board array" do
            board.input_entry("X", "B", "1")
            expect(board.board_array).to eq([["","",""], ["X","",""], ["","",""]])
        end
    end
end