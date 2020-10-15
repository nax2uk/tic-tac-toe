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

        def best_move(board)
            for row in 0..2
                for col in 0..2
                    if board.board_array[row][col] == " "
              
                        return [ROW.key(row), COL.key(col)]
                    end
                end
            end
        end
        
    end

end