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

    context "#minimax_score" do
        it "returns a score of -1 when 'O' has won the game" do
            # Arrange/Act 
            board.input_entry('O',"A","1")
            board.input_entry('X',"A","2")
            board.input_entry('X',"A","3")
            board.input_entry('O',"B","1")
            board.input_entry('X',"B","2")
            board.input_entry('X',"B","3")
            board.input_entry('O',"C","1")
            board.input_entry('O',"C","2")
            board.input_entry('O',"C","3")
            row = "C"
            column = "1"
            depth = 0
            # Assert
            expect(minimax.minimax_score(board, board_logic, row, column, depth)).to eq([-1, 0])
        end
        it "given the last empty space, returns a score of 0, user puts an entry and the game is drawn" do
            # Arrange/Act 
            board.input_entry('O',"A","1")
            board.input_entry('X',"A","2")
            board.input_entry('O',"A","3")
            board.input_entry('X',"B","1")
            board.input_entry('X',"B","2")
            board.input_entry('O',"B","3")
            board.input_entry('O',"C","1")
            board.input_entry('O',"C","2")
            board.input_entry('X',"C","3")
            row = "C"
            column = "1"
            depth = 0
            # Assert
            expect(minimax.minimax_score(board, board_logic, row, column, depth)).to eq([0, 0])
        end
    end
end
    








    # context "#minimax" do
    #     it "given that the user chooses the last empty space, minimax return 0 if user does not win" do
    #         #Arrange []
    #         board.input_entry('X',"A","1")
    #         board.input_entry('X',"A","2")
    #         board.input_entry('O',"A","3")
    #         board.input_entry('O',"B","1")
    #         board.input_entry('O',"B","2")
    #         board.input_entry('X',"B","3")
    #         board.input_entry('X',"C","1")
    #         board.input_entry('X',"C","3")
    #         # Act
    #         symbol = 'O'
    #         row = 'C'
    #         column = '2'
            

    #         # Assert
    #         expect(minimax.minimax(symbol, row, column, board, 0, false)).to eql(0)

            
    #     end
    #     it "given that the user chooses the last empty space, minimax return 0 if user wins" do

    #     end
    # end



