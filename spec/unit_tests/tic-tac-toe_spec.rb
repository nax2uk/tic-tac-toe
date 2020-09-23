require "./lib/tic-tac-toe"

describe TicTacToe do
    context "when a new game started" do
        it "outputs hello as a welcome message" do
            expect(TicTacToe.new.output_welcome_message).to eq("Hello")
        end
    end
end