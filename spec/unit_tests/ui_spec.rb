require "./lib/ui"

describe UI do
    context "when a new game started" do
        it "outputs a welcome message" do
            expect do
                UI.new.output_welcome_message
            end.to output("Welcome to Tic Tac Toe!\n\n").to_stdout
        end

        it "outputs instructions for game after welcome message" do
            expect do
                UI.new.output_instructions
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

    context "#set_continue - checks that user enters correct input when asked if user wants to continue" do
        ui = UI.new
        it "returns 'y' or 'n' in case of valid input" do
            allow(ui).to receive(:gets).and_return("y\n")
            # ui.stub(:gets).and_return("y\n")
            expect(ui.set_continue).to eq("y")
        end
        # it "doesnt return 'y' or 'n' on invalid input" do
        #     allow(ui).to receive(:gets).and_return("d\n")
        #     expect{ui.set_continue}.to output(
        #         "\nPlease enter y or n.\nDo you want to continue? y/n: "
        #     ).to_stdout

        # end
    end

end