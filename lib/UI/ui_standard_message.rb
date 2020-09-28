
# what is being output on the screen / terminal
class UIStandardMessage

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
    
end
    


