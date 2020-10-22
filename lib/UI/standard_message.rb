
# what is being output on the screen / terminal
module UI
    class StandardMessage

        def output_welcome_message
            puts "Welcome to Tic Tac Toe!\n\n"
        end

        def output_instructions
            puts <<~HEREDOC
                Instructions:

                The game is played on a 3x3 grid.
                You are X, your opponent is O. Players take turns putting their marks in empty squares.
                The first player to get 3 of their marks in a row (up, down, across, or diagonally) is the winner.
                If all 9 squares are full and no player has 3 marks in a row, the game is over.


            HEREDOC
        end

        def output_computer_wins_message
            puts "BETTER LUCK NEXT TIME, DON'T FEEL TOO BAD, WE ARE UNBEATABLE MWAHAHAAHA 😈 🌚"
        end

        def output_draw_message
            puts "YOU DID WELL TO DRAW AGAINST OUR UNBEATABLE AI 😱 👽"
        end

        def output_user_wins_message
            puts "IF YOU SEE THIS THEN OUR GAME IS BROKEN OH DEAR 😩"
        end

        def output_space_is_taken_message
            puts "This space is taken - please put your move somewhere else."
        end
    end
end
    


