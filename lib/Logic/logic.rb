module Logic
    class BoardLogic

        # will be called after every time a user / computer inputs an entry
        def has_won?(row, column, board)
        same_entries_in_a_line?(board.get_row(row)) ||
        same_entries_in_a_line?(board.get_column(column)) ||
        same_entries_in_a_line?(board.get_left_diagonal) ||
        same_entries_in_a_line?(board.get_right_diagonal)
        end

        # checks if same entry in a line
        def same_entries_in_a_line?(line_array)
            line_array.uniq.size <= 1 && line_array[0] != ""
        end 
    end
end




























 # row_array = @board.get_row(row)
        # column_array = @board.get_column(column)
        # left_diagonal_array = @board.get_left_diagonal
        # right_diagonal_array = @board.get_right_diagonal

        # self.same_entries_in_a_line(row_array) || 
        # self.same_entries_in_a_line(column_array) ||
        # self.same_entries_in_a_line(left_diagonal_array) ||
        # self.same_entries_in_a_line(right_diagonal_array)