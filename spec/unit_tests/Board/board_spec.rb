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
        it "takes in an entry with column coordinate '1' and adds it into the board array" do
            board.input_entry("O", "A", "1")
            expect(board.board_array).to eq([["O","",""], ["","",""], ["","",""]])
        end
        it "takes in an entry with column coordinate '2' and adds it into the board array" do
            board.input_entry("O", "B", "2")
            expect(board.board_array).to eq([["","",""], ["","O",""], ["","",""]])
        end
        it "takes in an entry with column coordinate '3' and adds it into the board array" do
            board.input_entry("O", "C", "3")
            expect(board.board_array).to eq([["","",""], ["","",""], ["","","O"]])
        end
        it "takes in 2 entries consecutively with row coordinate 'A' and adds them to the board array" do
            board.input_entry("X", "A", "1")
            board.input_entry("X", "A", "2")
            expect(board.board_array).to eq([["X","X",""], ["","",""], ["","",""]])
        end

        it "takes in 5 entries consecutively with a mixture of row and column coordinates and adds them to the board array" do
            board.input_entry("X", "A", "1")
            board.input_entry("O", "A", "2")
            board.input_entry("X", "B", "3")
            board.input_entry("O", "C", "2")
            board.input_entry("X", "B", "1")
            expect(board.board_array).to eq([["X","O",""], ["X","","X"], ["","O",""]])
        end
    end
    context "#has_won?" do
        it "returns false if there is only one 'X' in the board array" do
            array = [["X","",""], ["","",""], ["","",""]]
            expect(board.has_won?(array)).to eq(false)
        end
        
        xit "returns true if the first row contains three 'X's" do
            array = [["X","X","X"], ["","",""], ["","",""]]
            expect(board.has_won?(array)).to eq(true)
        end
    end
end

