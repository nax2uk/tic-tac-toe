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
            (line_array.count("X") >= 3 || line_array.count("O") >= 3) && line_array[0] != " "
        end 

        def validate_entry(row, column, board)
            board.get_entry(row, column) == " "
        end

        def is_board_full?(board)
            board.board_array.each do |row|
                return false if row.include?(" ")
            end
            return true
        end
    end
end