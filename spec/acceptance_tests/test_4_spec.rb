# Test 4: 
# Feature: Enables user to choose the location of their next move
# Enables user to have the first turn and choose a location
# Scenario: The game will ask the user where to put their entry, "O".
# Given: "Choose a location for 'O'" is displayed
# When: The user enters the location
# Then: The updated board gets displayed
require './lib/UI/input_coordinate'
require './lib/Controller/ui_controller'
require './lib/Controller/board_controller'

describe "AC Test 4: User wants to input the location of the next move" do
    context "The game will ask the user where to put their entry, 'O'" do

        it "displays an updated board" do
            # Arrange
            ui_controller = Controller::UIController.new
            board_controller = Controller::BoardController.new

            # Act
            allow(ui_controller).to receive(:get_row_coordinate_and_validate).and_return('A\n')
            allow(ui_controller).to receive(:get_column_coordinate_and_validate).and_return('1\n')
            board_controller.add_user_entry("A", "1")
            current_board = board_controller.get_board

            # Assert
            expect{ui_controller.print_current_board(current_board)}.to output("     1   2   3  \n   +---+---+---+ \nA  | O |   |   | \n   +---+---+---+ \nB  |   |   |   | \n   +---+---+---+ \nC  |   |   |   | \n   +---+---+---+ \n").to_stdout
           
        end
    end
end
