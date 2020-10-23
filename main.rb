#!/usr/bin/env ruby

# controller (model view controller) - takes input from the user and sends the data off to the back end
# Each component can have their individual controllers ()
# But can have one central controller which is what we have on lines 40/41
require './lib/tic_tac_toe'

class Main
    tic_tac_toe = TicTacToe.new
    tic_tac_toe.execute
end



