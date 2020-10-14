module Logic
    class BoardLogic

        ROW = {
                0  => 'A',
                1  => 'B',
                2  => 'C',
               
        }.freeze

        COL = {
            0  => '1',
            1  => '2',
            2  => '3',
        }.freeze 

        attr_accessor  :game_has_ended

        def initialize
            @game_has_ended = false
        end

        def has_won?(row, column, board)
            same_entries_in_a_line?(board.get_row(row)) ||
            same_entries_in_a_line?(board.get_column(column)) ||
            same_entries_in_a_line?(board.get_left_diagonal) ||
            same_entries_in_a_line?(board.get_right_diagonal)
        end

        # checks if same entry in a line
        def same_entries_in_a_line?(line_array)
            line_array.uniq.size <= 1 && line_array[0] != " "
        end 

        def validate_entry(row, column, board)

            board.get_entry(row, column) == " "
        end

        def get_best_move(board)
            best_score = -10000
            best_move = ["A","1"]
            symbol='X'

            for row in 0..2 do
                for column in 0..2 do
                    if self.validate_entry(ROW[row], COL[column], board)
                            board.input_entry(symbol, ROW[row], COL[column])
                            score = self.minimax(symbol, ROW[row], COL[column], board, 0, false)
                            board.remove_entry(ROW[row], COL[column])
                            if score > best_score
                                best_move[0]= ROW[row] 
                                best_move[1] = COL[column]
                                best_score = score
                            end
                            
                          
                    end
                end
            end
            
            return best_move
        end

        def board_is_full?(board)
            for row in 0..2 do
                if board.board_array[row].include?(" ")
                    return false
                end
            end
            return true
        end

        def calculate_score_if_game_ends(symbol, row, column, board)
            
            if self.has_won?(row, column, board) 
                return 1 if symbol == 'X'
                return -1 if symbol == 'O'
            end
            return 0 if self.board_is_full?(board)
        end

        def minimax(symbol, row, column, board, depth, isMaximising)

            result = self.calculate_score_if_game_ends(symbol, row, column, board)
            if result
                score = result
                return score
            end

            if isMaximising
                best_score = -10000
                symbol = 'X'
                for row in 0..2 do
                    for column in 0..2 do
                        if self.validate_entry(ROW[row], COL[column], board)
                            board.input_entry(symbol, ROW[row], COL[column])
                            score = self.minimax(symbol, ROW[row], COL[column], board, depth+1, false)
                            board.remove_entry(ROW[row], COL[column])
                            if score > best_score
                                best_score = score  
                            end
                        end
                    end
                end
                return best_score
            else
                best_score = 10000
                symbol = 'O'
                for row in 0..2 do
                    for column in 0..2 do
                        if self.validate_entry(ROW[row], COL[column], board)
                            board.input_entry(symbol, ROW[row], COL[column])
                            score = self.minimax(symbol, ROW[row], COL[column], board, depth+1, true)
                            board.remove_entry(ROW[row], COL[column])
                            if score < best_score
                                best_score = score  
                            end
                        end
                    end
                end
                return best_score
            end
        end




    end
end