# Test 1: It will display a start game message and instructions.
# Given: The user starts a game.
# When: When the user wants to start the game on the command line
# Then: A welcome and instructions will appear.

require './lib/tic_tac_toe'

describe "AC Test 1: User starts a game" do
    context "at the start of the game" do
        tic_tac_toe = TicTacToe.new
        it "displays a welcome message" do
            expect do
                tic_tac_toe.output_welcome_message
            end.to output("Welcome to Tic Tac Toe!\n\n").to_stdout
        end

        it "displays instructions" do
            expect do
                tic_tac_toe.output_instructions
            end.to output("Instructions:\n\nThe game is played on a 3x3 grid.\nYou are X, your opponent is O. Players take turns putting their marks in empty squares.\nThe first player to get 3 of their marks in a row (up, down, across, or diagonally) is the winner.\nIf all 9 squares are full and no player has 3 marks in a row, the game is over.\n\n\n").to_stdout
        end
    end
end