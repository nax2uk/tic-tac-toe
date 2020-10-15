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
            for row in 0..2
                for col in 0..2
                    if board_logic.validate_entry(ROW.key(row), COL.key(col), board)
                        # board.input_entry(ROW.key(row), COL.key(col))
                        # result = minimax(board, board_logic, row, column)
                        # score, depth = result[0], result[1]
                        # board.remove_entry(ROW.key(row), COL.key(col))
                        return [ROW.key(row), COL.key(col)]
                    end
                end
            end
        end
        


        def minimax_score(board, board_logic, row, column, depth)
            if board_logic.has_won?(row, column, board)
                return [-1, depth]
            end
            return [0, depth]
        end

    # def minimax_score(symbol,row, column, board, board_logic)
    #     if board_logic.has_won?(row, column, board)
    #         return -1 if symbol == 'O'
    #         return 1 if symbol == 'X'
    #     end
    # end

    end
end