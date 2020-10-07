
require './lib/UI/board'
module Controller
    class PrintBoardOrExitGame
        def execute(continue)
            puts continue
            if continue == 'y'
                UI::Board.new.prints_empty_board
            elsif continue == 'n'
                exit(true)
            end
        end
    end
end