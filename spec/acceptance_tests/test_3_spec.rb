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

# Test 4: 
# Feature: Enables user to choose the location of their next move
# Enables user to have the first turn and choose a location
# Scenario: The game will ask the user where to put their entry, "O", after printing the empty board at the start of the game has been printed and for all subsequent user moves.
# After the empty board has been printed, the game will ask the user to choose where to put his entry, "O"
# Given: "Choose a location for 'O'" is displayed
# When: The user enters the location
# Then: The updated board gets displayed

# Test 5:
# Feature: Can see the computer's next move on the board 
##### MINIMAX ALGO

# Test 6:
# Feature: To be told if the user has won, lost, or drawn the game
#

# Test 7:
# Feature: Can play the game multiple times in a row after user or computer has won
#
