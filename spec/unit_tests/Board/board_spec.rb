require './lib/Board/board'

describe Board do
    context "#initialize" do
        it "creates a new board that is a 3x3 array" do
            board = Board.new
            expect(board.board_array).to eq([["","",""], ["","",""], ["","",""]])
        end
    end
end