# Test 2: It will output an empty board at the start of the game.
# Given: A user has started the game and read the instructions
# When: the user the inputs "y" to continue.
# Then: an empty board will appear.
require './lib/ui'
require './lib/board.rb'

describe "AC Test 2: User has read the instructions and wants to continue with the game" do
    context "After user inputs 'y' to continue" do
        xit "displays an empty board" do
            ui = UI.new
            board = Board.new
            allow(ui).to receive(:gets).and_return("y\n")
            # ui.stub(:gets).and_return("y\n")
            expect(ui.set_continue).to eq("y")
            expect do
                # board.prints_empty_board #method which asks the user if user wants to continue and prints out the empty board if the input is yes.
                # continue("y")
            end.to output("     1   2   3  \n   +---+---+---+ \nA  |   |   |   | \n   +---+---+---+ \nB  |   |   |   | \n   +---+---+---+ \nC  |   |   |   | \n   +---+---+---+ \n").to_stdout
        end
    end
end


