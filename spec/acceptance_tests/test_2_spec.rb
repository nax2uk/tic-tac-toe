# Test 2: It will output an empty board at the start of the game.
# Given: A user has started the game and read the instructions
# When: the user the inputs "y" to continue.
# Then: an empty board will appear.
require './lib/UI/continue_message'
require './lib/UI/board'

describe "AC Test 2: User has read the instructions and wants to continue with the game" do
    context "After user inputs 'y' to continue" do
        xit "displays an empty board" do
            continue_message = UI::ContinueMessage.new
            # board = UI::Board.new
            allow(continue_message).to receive(:gets).and_return("y\n")
            # ui.stub(:gets).and_return("y\n")
            expect(continue_message.capture_input).to eq("y")
            expect do
                #method which asks the user if user wants to continue and prints out the empty board if the input is yes.
                # continue("y")
            end.to output("     1   2   3  \n   +---+---+---+ \nA  |   |   |   | \n   +---+---+---+ \nB  |   |   |   | \n   +---+---+---+ \nC  |   |   |   | \n   +---+---+---+ \n").to_stdout
        end
    end
end


