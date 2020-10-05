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

    context "#get_row" do
        it "returns an array containing entries in row A" do
            expect(board.get_row("A")).to eq(["", "", ""])
        end
        it "returns an array containing entries in row A when there is an 'X' at (A, 1)" do
            board.input_entry("X", "A", "1")
            expect(board.get_row("A")).to eq(["X", "", ""])
        end
        it "returns an array containing entries in row B" do
            board.input_entry("X", "A", "1")
            board.input_entry("O", "B", "2")
            expect(board.get_row("B")).to eq(["", "O", ""])
        end
        it "returns an array containing entries in row C" do
            board.input_entry("X", "A", "1")
            board.input_entry("O", "C", "2")
            expect(board.get_row("C")).to eq(["", "O", ""])
        end
        it "returns an array containing two entries in row C" do
            board.input_entry("X", "C", "1")
            board.input_entry("O", "C", "2")
            expect(board.get_row("C")).to eq(["X", "O", ""])
        end
        it "returns a copy of the board row array and not a reference to it" do
            board.input_entry("X", "A", "1")
            expect(board.get_row("A").object_id).to_not eq(board.get_board_row_object_id("A"))
        end
    end
    
    context "#get_column" do
        it "returns an array containing entries in column 1" do
            expect(board.get_column("1")).to eq(["", "", ""])
        end
        it "returns an array containing entries in column 1 when there is an 'X' at (A, 1)" do
            board.input_entry("X", "A", "1")
            expect(board.get_column("1")).to eq(["X", "", ""])
        end
        it "returns an array containing entries in column 1 when there is an 'O' at (A, 1)" do
            board.input_entry("O", "A", "1")
            expect(board.get_column("1")).to eq(["O", "", ""])
        end
        it "returns an array containing entries in column 1 when there is nothing in (B, 1)" do
            expect(board.get_column("1")).to eq(["", "", ""])
        end
        it "returns an array containing entries in column 1 when there is an 'X' at (B, 1)" do
            board.input_entry("X", "B", "1")
            expect(board.get_column("1")).to eq(["", "X", ""])
        end
        it "returns an array containing entries in column 1 when there is an 'O' at (B, 1)" do
            board.input_entry("O", "B", "1")
            expect(board.get_column("1")).to eq(["", "O", ""])
        end
        it "returns an array containing entries in column 1 when there is nothing in (C, 1)" do
            expect(board.get_column("1")).to eq(["", "", ""])
        end
        it "returns an array containing entries in column 1 when there is an 'X' at (C, 1)" do
            board.input_entry("X", "C", "1")
            expect(board.get_column("1")).to eq(["", "", "X"])
        end
        it "returns an array containing entries in column 1 when there is an 'O' at (C, 1)" do
            board.input_entry("O", "C", "1")
            expect(board.get_column("1")).to eq(["", "", "O"])
        end
        it "returns an array containing entries in column 2 when there is an 'X' at (A, 2)" do
            board.input_entry("X", "A", "2")
            expect(board.get_column("2")).to eq(["X", "", ""])
        end
        it "returns an array containing 2 entries in column 1 when there is an 'X' at (A, 1) and 'O' at (B, 1)" do
            board.input_entry("X", "A", "1")
            board.input_entry("O", "B", "1")
            expect(board.get_column("1")).to eq(["X", "O", ""])
        end
        it "returns an array containing 3 entries in column 1 when there is an 'X' at (A, 1) and (C, 1) and 'O' at (B, 1)" do
            board.input_entry("X", "A", "1")
            board.input_entry("O", "B", "1")
            board.input_entry("X", "C", "1")
            expect(board.get_column("1")).to eq(["X", "O", "X"])
        end
        it "returns an array containing 3 entries in column 2 when there is an 'O' at (A, 2) and (C, 2) and 'X' at (B, 2)" do
            board.input_entry("O", "A", "2")
            board.input_entry("X", "B", "2")
            board.input_entry("O", "C", "2")
            expect(board.get_column("2")).to eq(["O", "X", "O"])
        end
        it "returns an array containing 3 entries in column 3 when there is an 'O' at (A, 3) and (C, 3) and 'X' at (B, 3)" do
            board.input_entry("O", "A", "3")
            board.input_entry("X", "B", "3")
            board.input_entry("O", "C", "3")
            expect(board.get_column("3")).to eq(["O", "X", "O"])
        end
        it "returns an array containing 3 entries in column 3 when there is an 'O' at (A, 3) and (C, 3) and 'X' at (B, 3)" do
            board.input_entry("O", "A", "1")
            board.input_entry("X", "B", "2")
            board.input_entry("O", "C", "3")
            board.input_entry("X", "B", "3")
            board.input_entry("O", "C", "1")
            expect(board.get_column("1")).to eq(["O", "", "O"])
            expect(board.get_column("2")).to eq(["", "X", ""])
            expect(board.get_column("3")).to eq(["", "X", "O"])
        end
    end

    context "#get_left_diagonal" do
        it "returns an array containing entries along the left diagonal when there is an 'X' at (A, 1)" do
            board.input_entry("X", "A", "1")
            expect(board.get_left_diagonal).to eq(["X", "", ""])
        end
        it "returns an array containing 2 entries, (A, 1) and (B, 2), along the left diagonal" do
            board.input_entry("X", "A", "1")
            board.input_entry("O", "B", "2")
            expect(board.get_left_diagonal).to eq(["X", "O", ""])
        end
        it "returns an array containing 3 entries, (A, 1), (B, 2) and (C, 3), along the left diagonal" do
            board.input_entry("X", "A", "1")
            board.input_entry("O", "B", "2")
            board.input_entry("X", "C", "3")
            expect(board.get_left_diagonal).to eq(["X", "O", "X"])
        end
        it "returns an array containing 3 entries along the left diagonal when there are other entries on the board" do
            board.input_entry("O", "A", "1")
            board.input_entry("X", "B", "2")
            board.input_entry("O", "B", "3")
            board.input_entry("X", "C", "3")
            board.input_entry("O", "C", "1")
            expect(board.get_left_diagonal).to eq(["O", "X", "X"])
        end
    end

    context "#get_right_diagonal" do
        it "returns an array containing entries along the right diagonal when there is an 'X' at (A, 3)" do
            board.input_entry("X", "A", "3")
            expect(board.get_right_diagonal).to eq(["X", "", ""])
        end
        it "returns an array containing 2 entries, (A, 3) and (B, 2), along the right diagonal" do
            board.input_entry("X", "A", "3")
            board.input_entry("O", "B", "2")
            expect(board.get_right_diagonal).to eq(["X", "O", ""])
        end
        it "returns an array containing 3 entries, (A, 1), (B, 2) and (C, 3), along the right diagonal" do
            board.input_entry("X", "A", "3")
            board.input_entry("O", "B", "2")
            board.input_entry("X", "C", "1")
            expect(board.get_right_diagonal).to eq(["X", "O", "X"])
        end
        it "returns an array containing 3 entries along the right diagonal when there are other entries on the board" do
            board.input_entry("O", "A", "1")
            board.input_entry("X", "B", "2")
            board.input_entry("O", "B", "3")
            board.input_entry("X", "C", "3")
            board.input_entry("O", "C", "1")
            expect(board.get_right_diagonal).to eq(["", "X", "O"])
        end

    end
end

