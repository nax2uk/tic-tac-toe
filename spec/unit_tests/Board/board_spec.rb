require './lib/Board/board'

describe Board do
    let(:board) {Board.new}

    context "#initialize" do
        it "creates a new board that is a 3x3 array" do
            expect(board.board_array).to eq([["","",""], ["","",""], ["","",""]])
        end
    end
    context "#input_entry" do
        it "takes in an entry with row coordinate 'A' and adds it into the board array" do
            board.input_entry("X", "A", "1")
            expect(board.board_array).to eq([["X","",""], ["","",""], ["","",""]])
        end
        it "takes in an entry with row coordinate 'B' and adds it to the board array" do
            board.input_entry("X", "B", "1")
            expect(board.board_array).to eq([["","",""], ["X","",""], ["","",""]])
        end
        it "takes in an entry with row coordinate 'C' and adds it to the board array" do
            board.input_entry("X", "C", "1")
            expect(board.board_array).to eq([["","",""], ["","",""], ["X","",""]])
        end
        it "takes in 2 entries consecutively with row coordinate 'A' and adds them to the board array" do
            board.input_entry("X", "A", "1")
            board.input_entry("X", "A", "2")
            expect(board.board_array).to eq([["X","X",""], ["","",""], ["","",""]])
        end

   
    end
end