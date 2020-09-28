require "./lib/UI/ui_standard_message"

describe UIStandardMessage do
    let(:ui_standard_message) {UIStandardMessage.new}
    context "when a new game started" do
        it "outputs a welcome message" do
            expect do
                ui_standard_message.output_welcome_message
            end.to output("Welcome to Tic Tac Toe!\n\n").to_stdout
        end

        it "outputs instructions for game after welcome message" do
            expect do
                ui_standard_message.output_instructions
            end.to output(
                <<~HEREDOC
                Instructions:
                
                The game is played on a 3x3 grid.
                You are X, your opponent is O. Players take turns putting their marks in empty squares.
                The first player to get 3 of their marks in a row (up, down, across, or diagonally) is the winner.
                If all 9 squares are full and no player has 3 marks in a row, the game is over.
                
                
                HEREDOC
                ).to_stdout
        end
    end

    context "after user has read the instructions" do
        xit "can take a user input" do
       
        end
    end


end