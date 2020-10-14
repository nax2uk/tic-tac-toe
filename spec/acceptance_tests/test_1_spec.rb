# Test 1: 
# Feature: It will display a start game message and instructions.
# Given: The user starts a game.
# When: When the user wants to start the game on the command line
# Then: A welcome and instructions will appear.

require './lib/Controller/ui_controller'

describe "AC Test 1: User starts a game" do
    context "at the start of the game" do
        ui_controller = Controller::UIController.new
        it "displays a welcome message and instructions" do
            expect do
                ui_controller.print_welcome_and_output_instructions
            end.to output(        
            <<~HEREDOC
            Welcome to Tic Tac Toe!

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