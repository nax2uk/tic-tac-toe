# Test 2: It will output an empty board at the start of the game.
# Given: A user has started the game and read the instructions
# When: the user the inputs "y" to continue.
# Then: an empty board will appear.
require './lib/UI/continue_message'
require './lib/UI/board'

describe "AC Test 2: User has read the instructions and wants to continue with the game" do
    context "After user inputs 'y' to continue" do
        it "displays an empty board" do
            ui_controller = Controller::UIController.new
            continue = "y"
            # Act
            # Assert
            expect{ui_controller.print_board_or_exit_game(continue)}.to output("     1   2   3  \n   +---+---+---+ \nA  |   |   |   | \n   +---+---+---+ \nB  |   |   |   | \n   +---+---+---+ \nC  |   |   |   | \n   +---+---+---+ \n").to_stdout
        end
    end
end



