require './lib/Logic/logic'
require './lib/BoardArray/board'

describe Logic::BoardLogic do
    let(:logic) {Logic::BoardLogic.new}
    let(:board) {BoardArray::Board.new}

    context "#same_entries_in_a_line?" do
        it "returns false if row entries are not the same" do
            board.input_entry("X", "A", "1")
            row_array = board.get_row("A")
            expect(logic.same_entries_in_a_line?(row_array)).to eq(false)
        end
        it "returns false if column entries are not the same" do
            board.input_entry("X", "A", "1")
            column_array = board.get_column("1")
            expect(logic.same_entries_in_a_line?(column_array)).to eq(false)
        end
        it "returns false if left diagonal entries are not the same" do
            board.input_entry("X", "A", "1")
            left_diagonal_array = board.get_left_diagonal
            expect(logic.same_entries_in_a_line?(left_diagonal_array)).to eq(false)
        end
        it "returns false if right diagonal entries are not the same" do
            board.input_entry("X", "A", "1")
            right_diagonal_array = board.get_right_diagonal
            expect(logic.same_entries_in_a_line?(right_diagonal_array)).to eq(false)
        end
        it "returns false if right diagonal entries are not the same" do
            board.input_entry("X", "B", "1")
            right_diagonal_array = board.get_right_diagonal
            expect(logic.same_entries_in_a_line?(right_diagonal_array)).to eq(false)
        end
        it "returns true if column entries are the same" do
            board.input_entry("X", "A", "1")
            board.input_entry("X", "B", "1")
            board.input_entry("X", "C", "1")
            column_array = board.get_column("1")
            expect(logic.same_entries_in_a_line?(column_array)).to eq(true)
        end
        it "returns true if row entries are the same" do
            board.input_entry("X", "C", "1")
            board.input_entry("X", "C", "2")
            board.input_entry("X", "C", "3")
            row_array = board.get_row("C")
            expect(logic.same_entries_in_a_line?(row_array)).to eq(true)
        end
        it "returns true if left diagonal entries are the same" do
            board.input_entry("O", "A", "1")
            board.input_entry("O", "B", "2")
            board.input_entry("O", "C", "3")
            left_diagonal_array = board.get_left_diagonal
            expect(logic.same_entries_in_a_line?(left_diagonal_array)).to eq(true)
        end
        it "returns true if right diagonal entries are the same" do
            board.input_entry("O", "A", "3")
            board.input_entry("O", "B", "2")
            board.input_entry("O", "C", "1")
            right_diagonal_array = board.get_right_diagonal
            expect(logic.same_entries_in_a_line?(right_diagonal_array)).to eq(true)
        end
        it "returns true if right diagonal entries are the same" do
            board.input_entry("X", "A", "3")
            board.input_entry("O", "A", "1")
            board.input_entry("X", "B", "2")
            board.input_entry("X", "C", "3")
            board.input_entry("X", "C", "1")
            right_diagonal_array = board.get_right_diagonal
            expect(logic.same_entries_in_a_line?(right_diagonal_array)).to eq(true)
        end
        
    end

    context "#has_won?" do
        it "returns false if user/computer inputs 'O' at (A,1)" do
            board.input_entry("O", "A", "1")
            expect(logic.has_won?("A", "1", board)).to eq(false)
        end
        it "returns false if computer inputs 'X' and does not win " do
            # ARRANGE
            board.input_entry("O", "A", "1")
            # ACT
            board.input_entry("X", "B", "1")
            # ASSERT
            expect(logic.has_won?("B", "1", board)).to eq(false)
        end
        it "returns true when user inputs 'O' and wins by filling a row" do
            # ARRANGE
            board.input_entry("O", "A", "1")
            board.input_entry("X", "B", "1")
            board.input_entry("O", "A", "2")
            board.input_entry("X", "C", "3")
            # ACT
            board.input_entry("O", "A", "3")
            # ASSERT
            expect(logic.has_won?("A", "3", board)).to eq(true)
        end
        it "returns true when user inputs 'O' and wins by filling a column" do
            # ARRANGE
            board.input_entry("O", "A", "2")
            board.input_entry("X", "B", "1")
            board.input_entry("O", "B", "2")
            board.input_entry("X", "C", "3")
            # ACT
            board.input_entry("O", "C", "2")
            # ASSERT
            expect(logic.has_won?("C", "2", board)).to eq(true)
        end
        it "returns true when user inputs 'O' and wins by filling left diagonal" do
            # ARRANGE
            board.input_entry("O", "A", "1")
            board.input_entry("X", "B", "1")
            board.input_entry("O", "B", "2")
            board.input_entry("X", "C", "2")
            # ACT
            board.input_entry("O", "C", "3")
            # ASSERT
            expect(logic.has_won?("C", "3", board)).to eq(true)
        end
        it "returns true when user inputs 'O' and wins by filling right diagonal" do
            # ARRANGE
            board.input_entry("O", "A", "3")
            board.input_entry("X", "B", "1")
            board.input_entry("O", "B", "2")
            board.input_entry("X", "C", "2")
            # ACT
            board.input_entry("O", "C", "1")
            # ASSERT
            expect(logic.has_won?("C", "1", board)).to eq(true)
        end
    end
    context "#validate_entry" do
        it "returns true given a board with an empty space at (A, 1)" do
            # Arrange
            row = "A"
            column = "1"
            # Act
            expect(logic.validate_entry(row, column, board)).to eq(true)
        end

        it "returns true given a board with an empty space at (B, 1)" do
            # Arrange
            row = "B"
            column = "1"
            # Act
            expect(logic.validate_entry(row, column, board)).to eq(true)
        end

        it "returns false given a board without a empty space at (A, 2)" do
            # Arrange
            board.input_entry("X", "A", "2")
            row = "A"
            column = "2"
            # Act
            expect(logic.validate_entry(row, column, board)).to eq(false)
        end
    end
end
