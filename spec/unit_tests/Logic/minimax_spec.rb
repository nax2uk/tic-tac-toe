require './lib/Logic/minimax'
require './lib/BoardArray/board'

describe Logic::Minimax do
    let(:board) {BoardArray::Board.new}
    let(:minimax) {Logic::Minimax.new}
    context "#best_move" do
        it "returns ['C','3'] when there is only one empty space left" do
            # Arrange
              
            # Act
            allow(board).to receive(:board_array).and_return( [["X","O","X"], ["X","O","O"], ["O","X"," "]])
            
            # Assert
            expect(minimax.best_move).to eq(["C","3"])
        end
    end 

end
