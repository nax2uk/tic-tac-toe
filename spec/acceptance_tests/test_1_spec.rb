# Test 1: It will display a start game message and instructions.
# Given: The user starts a game.
# When: When the user wants to start the game on the command line
# Then: A welcome and instructions will appear.

require './lib/ui'

describe "AC Test 1: User starts a game" do
    context "at the start of the game" do
        ui = UI.new
        it "displays a welcome message" do
            expect do
                ui.output_welcome_message
            end.to output("Welcome to Tic Tac Toe!\n\n").to_stdout
        end

        it "displays instructions" do
            expect do
                ui.output_instructions
            end.to output(
                <<~HEREDOC
                Instructions:
                
                The game is played on a 3x3 grid.
                You are X, your opponent is O. Players take turns putting their marks in empty squares.
                The first player to get 3 of their marks in a row (up, down, across, or diagonally) is the winner.
                If all 9 squares are full and no player has 3 marks in a row, the game is over.
                
                
                HEREDOC
                ).to_stdout
        end
    end
end