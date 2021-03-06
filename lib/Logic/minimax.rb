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
            best_coordinates = ["",""]
            best_depth = 20
            symbol = "X"
            for row in 0..2
                for col in 0..2
                    if board_logic.validate_entry(ROW.key(row), COL.key(col), board)
                        board.input_entry(symbol, ROW.key(row), COL.key(col))
                        result = minimax_score(board, board_logic, symbol, ROW.key(row), COL.key(col), 0, false)
                        score, depth = result[0], result[1]
                        board.input_entry(" ", ROW.key(row), COL.key(col))
                        if score >= best_score
                            if score > best_score
                               best_score = score
                               best_depth = depth
                               best_coordinates = [ROW.key(row), COL.key(col)]
                            elsif score == best_score
                               if depth < best_depth 
                                  best_depth = depth
                                  best_coordinates = [ROW.key(row), COL.key(col)]
                               end
                            end 
                        end
                    end
                end
            end
            return best_coordinates
        end
        
        def game_ends?(board, board_logic, symbol, row, column, depth)
            if board_logic.has_won?(row, column, board)
                return [-1, depth] if symbol == 'O'
                return [1, depth] if symbol == 'X'
            end
            return [0, depth] if board_logic.is_board_full?(board)
        end

        def minimax_score(board, board_logic, symbol, row, column, depth, next_turn_maximising)
            
            result = game_ends?(board, board_logic, symbol, row, column, depth)
            return result if result

            if next_turn_maximising

                result = maximising_score(board, board_logic, row, column, depth)
            else

                result = minimising_score(board, board_logic, row, column, depth)
            end
            return result
        end

        def maximising_score(board, board_logic, row, column, depth)
            symbol = "X"
            best_score = -10000
            best_depth = 20
            current_depth = depth
            for row in 0..2
                for col in 0..2
                    if board_logic.validate_entry(ROW.key(row), COL.key(col), board)
                        board.input_entry(symbol, ROW.key(row), COL.key(col))
                        result = minimax_score(board, board_logic, symbol, ROW.key(row), COL.key(col), current_depth + 1, false)
                        score, current_depth = result[0], result[1]
                        board.input_entry(" ", ROW.key(row), COL.key(col))
                        if score >= best_score
                            if score > best_score
                               best_score = score
                               best_depth = current_depth
                            elsif score == best_score
                               if current_depth < best_depth 
                                  best_depth = current_depth
                               end
                            end 
                        end
                        current_depth = depth
                    end
                end
            end
            
            return [best_score, best_depth]
        end

        def minimising_score(board, board_logic, row, column, depth)
            symbol = "O"
            best_score = 10000
            best_depth = 20
            current_depth = depth
            for row in 0..2
                for col in 0..2
                    if board_logic.validate_entry(ROW.key(row), COL.key(col), board)
                        board.input_entry(symbol, ROW.key(row), COL.key(col))
                        result = minimax_score(board, board_logic, symbol, ROW.key(row), COL.key(col), current_depth + 1, true)
                        score, current_depth = result[0], result[1]
                        board.input_entry(" ", ROW.key(row), COL.key(col))
                        if score <= best_score
                            if score < best_score
                               best_score = score
                               best_depth = current_depth
                            elsif score == best_score
                               if current_depth < best_depth 
                                  best_depth = current_depth
                               end
                            end 
                        end
                        current_depth = depth
                    end
                end
            end
            return [best_score, best_depth] 
        end
    end
end