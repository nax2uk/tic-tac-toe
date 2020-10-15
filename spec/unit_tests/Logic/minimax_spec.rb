require './lib/Logic/minimax'
require './lib/Logic/logic'
require './lib/BoardArray/board'

describe Logic::Minimax do
    let(:board) {BoardArray::Board.new}
    let(:minimax) {Logic::Minimax.new}
    let(:board_logic) {Logic::BoardLogic.new}
    context "#best_move" do
        it "returns ['C','3'] when there is only one empty space left" do
            # Arrange
            board.input_entry('X',"A","1")
            board.input_entry('O',"A","2")
            board.input_entry('X',"A","3")
            board.input_entry('X',"B","1")
            board.input_entry('O',"B","2")
            board.input_entry('O',"B","3")
            board.input_entry('O',"C","1")
            board.input_entry('X',"C","2")
    
            # Act && Assert
            expect(minimax.best_move(board, board_logic)).to eq(["C","3"])
        end
        it "returns ['B','2'] when there is only one empty space left" do
            # Arrange && Act
            board.input_entry('X',"A","1")
            board.input_entry('O',"A","2")
            board.input_entry('X',"A","3")
            board.input_entry('O',"B","1")
            board.input_entry('O',"B","3")
            board.input_entry('X',"C","1")
            board.input_entry('O',"C","2")
            board.input_entry('X',"C","3")
            
            # Assert
            expect(minimax.best_move(board, board_logic)).to eq(["B","2"])
        end
    end 

end
