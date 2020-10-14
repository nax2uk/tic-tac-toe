# Acceptance tests are written from the pov of the user
# Think about whether the test could be broken
# Features vs Scenarios : just helps organise tests e.g. feature : ability to tell when someone has won/knowing who has won the game. scenario: actual things your testing (very similar to it and context) e.g when someone has won, and when someone hasn't won) basically just happy and sad route
# Don't put too much into acceptance tests because they are SLOW. All the possible ways of winning should go into unit cases (e.g. edge cases)

# Test 3: 
# Feature: It will exit the game if the user decides not to play
# Scenario: When a user has started the game, read the instructions and decided not to continue the game
# Given: "Do you want to continue? y/n" is displayed,
# When: the user the inputs "n"
# Then: the game exits
require './lib/Controller/ui_controller'

describe "AC Test 3: User decided not to continue the game" do
    context "The game will ask the user 'Do you want to continue? y/n'" do

        it "given the user the inputs 'n', the game exits" do
            # Arrange
            ui_controller = Controller::UIController.new
            continue = "n"
            # Act
            # Assert
            expect{ui_controller.print_board_or_exit_game(continue)}.to raise_error(SystemExit)
        end
    end
end
            




