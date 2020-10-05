require './lib/Logic/logic'
require './lib/Board/board'

describe Logic do
    let(:logic) {Logic.new}
    let(:board) {Board.new}

    context "#same_entries_in_a_line" do
        it "returns false if row entries are not the same" do
            board.input_entry("X", "A", "1")
            row_array = board.get_row("A")
            expect(logic.same_entries_in_a_line(row_array)).to eq(false)
        end
        it "returns false if column entries are not the same" do
            board.input_entry("X", "A", "1")
            column_array = board.get_column("1")
            expect(logic.same_entries_in_a_line(column_array)).to eq(false)
        end
        it "returns false if left diagonal entries are not the same" do
            board.input_entry("X", "A", "1")
            left_diagonal_array = board.get_left_diagonal
            expect(logic.same_entries_in_a_line(left_diagonal_array)).to eq(false)
        end
        it "returns false if right diagonal entries are not the same" do
            board.input_entry("X", "A", "1")
            right_diagonal_array = board.get_right_diagonal
            expect(logic.same_entries_in_a_line(right_diagonal_array)).to eq(false)
        end
        it "returns false if right diagonal entries are not the same" do
            board.input_entry("X", "B", "1")
            right_diagonal_array = board.get_right_diagonal
            expect(logic.same_entries_in_a_line(right_diagonal_array)).to eq(false)
        end
        it "returns true if column entries are the same" do
            board.input_entry("X", "A", "1")
            board.input_entry("X", "B", "1")
            board.input_entry("X", "C", "1")
            column_array = board.get_column("1")
            expect(logic.same_entries_in_a_line(column_array)).to eq(true)
        end
        it "returns true if row entries are the same" do
            board.input_entry("X", "C", "1")
            board.input_entry("X", "C", "2")
            board.input_entry("X", "C", "3")
            row_array = board.get_row("C")
            expect(logic.same_entries_in_a_line(row_array)).to eq(true)
        end
        it "returns true if left diagonal entries are the same" do
            board.input_entry("O", "A", "1")
            board.input_entry("O", "B", "2")
            board.input_entry("O", "C", "3")
            left_diagonal_array = board.get_left_diagonal
            expect(logic.same_entries_in_a_line(left_diagonal_array)).to eq(true)
        end
        it "returns true if right diagonal entries are the same" do
            board.input_entry("O", "A", "3")
            board.input_entry("O", "B", "2")
            board.input_entry("O", "C", "1")
            right_diagonal_array = board.get_right_diagonal
            expect(logic.same_entries_in_a_line(right_diagonal_array)).to eq(true)
        end
        it "returns true if right diagonal entries are the same" do
            board.input_entry("X", "A", "3")
            board.input_entry("O", "A", "1")
            board.input_entry("X", "B", "2")
            board.input_entry("X", "C", "3")
            board.input_entry("X", "C", "1")
            right_diagonal_array = board.get_right_diagonal
            expect(logic.same_entries_in_a_line(right_diagonal_array)).to eq(true)
        end
        
    end

    context "#has_won?" do
        it "returns false if it's an empty board" do
            
        end
    end
end
