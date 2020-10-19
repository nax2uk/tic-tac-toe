module Logic
    class Minimax

        ROW = {
            'A'=> 0, 
            'B'=> 1,
            'C'=> 2
        }.freeze

        COL = {
                '1'=> 0,
                '2'=> 1,
                '3'=> 2
        }.freeze 

        def best_move(board, board_logic)
            best_score = -10000
            best_row = ""
            best_column = ""
            best_depth = 20
            symbol = "X"
            for row in 0..2
                for col in 0..2
                    if board_logic.validate_entry(ROW.key(row), COL.key(col), board)
                        board.input_entry(symbol, ROW.key(row), COL.key(col))
                        result = minimax_score(board, board_logic, symbol, ROW.key(row), COL.key(col), 0)
                        score, depth = result[0], result[1]
                        board.input_entry(" ", ROW.key(row), COL.key(col))
                        if score >= best_score
                            if depth <= best_depth
                                best_score = score
                                best_row = ROW.key(row)
                                best_column = COL.key(col)
                            end
                        end 
                    end
                end
            end
            return [best_row, best_column]
        end
        


        def minimax_score(board, board_logic, symbol, row, column, depth, is_next_turn_maximising = true)
            if board_logic.has_won?(row, column, board)
                if symbol == 'O'
                    return [-1, depth]
                else
                    return [1, depth]
                end
            end
            # if board_logic.is_board_full?(board)
            #     return [0, depth]
            # end
            return [0, depth]
        end

                        # board.input_entry(ROW.key(row), COL.key(col))
                        # result = minimax(board, board_logic, row, column)
                        # score, depth = result[0], result[1]
                        # board.remove_entry(ROW.key(row), COL.key(col))

    end
end