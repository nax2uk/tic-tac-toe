require "./lib/tic-tac-toe"

describe TicTacToe do
    context "when a new game started" do
        it "outputs a welcome message" do
            expect do
                TicTacToe.new.output_welcome_message
            end.to output("Welcome to Tic Tac Toe!\n").to_stdout
        end
    end
end

# describe MakeIt do
#     describe '#awesome' do
#       it 'prints awesome things' do
#         expect do
#           MakeIt.new.awesome('tests')
#         end.to output('Awesome tests').to_stdout
#       end

#       expect { something }.to output("hello\n").to_stdout