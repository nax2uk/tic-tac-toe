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
                        puts "added X at #{ROW.key(row)}#{COL.key(col)}"
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
                if symbol == 'O'
                    return [-1, depth]
                else
                    return [1, depth]
                end
            end
            if board_logic.is_board_full?(board)
                return [0, depth]
            end
        end

        def minimax_score(board, board_logic, symbol, row, column, depth, next_turn_maximising)
            
            result = game_ends?(board, board_logic, symbol, row, column, depth)
            if result != nil
                return result 
            end
            current_depth = depth

            if next_turn_maximising
                puts "maximising"
                symbol = "X"
                best_score = -10000
                best_depth = 20
                for row in 0..2
                    for col in 0..2
                        if board_logic.validate_entry(ROW.key(row), COL.key(col), board)
                            board.input_entry(symbol, ROW.key(row), COL.key(col))
                            puts "added X at #{ROW.key(row)}#{COL.key(col)} depth is #{depth+1}"
                            result = minimax_score(board, board_logic, symbol, ROW.key(row), COL.key(col), depth + 1, false)
                            score, depth = result[0], result[1]
                            board.input_entry(" ", ROW.key(row), COL.key(col))
                            puts "in maximising score is #{score} and best_score is #{best_score} depth is #{depth} and best depth is #{best_depth}"
                            if score >= best_score
                                if score > best_score
                                   best_score = score
                                   best_depth = depth
                                elsif score == best_score
                                   if depth < best_depth 
                                      best_depth = depth
                                   end
                                end 
                            end
                            depth = current_depth
                        end
                    end
                end
                puts "best_score is #{best_score}, best_depth is #{best_depth}"
                
                return [best_score, best_depth]
            else
                puts "minimising"
                symbol = "O"
                best_score = 10000
                best_depth = 20
                for row in 0..2
                    for col in 0..2
                        if board_logic.validate_entry(ROW.key(row), COL.key(col), board)
                            board.input_entry(symbol, ROW.key(row), COL.key(col))
                            puts "added O at #{ROW.key(row)}#{COL.key(col)} depth is #{depth+1}"
                            result = minimax_score(board, board_logic, symbol, ROW.key(row), COL.key(col), depth + 1, true)
                            score, depth = result[0], result[1]
                            board.input_entry(" ", ROW.key(row), COL.key(col))
                            puts "in minimising score is #{score} and best_score is #{best_score} depth is #{depth} and best depth is #{best_depth}"
                            if score <= best_score
                                if score < best_score
                                   best_score = score
                                   best_depth = depth
                                elsif score == best_score
                                   if depth < best_depth 
                                      best_depth = depth
                                   end
                                end 
                            end
                            depth = current_depth
                        end

                    end
                end
                
                return [best_score, best_depth] 
            end
            
        end
    end
end