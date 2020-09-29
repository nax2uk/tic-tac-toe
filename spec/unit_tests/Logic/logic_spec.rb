require './lib/Logic/logic'

describe Logic do
    let(:logic) {Logic.new}
    context "#has_won?" do
        it "returns false if there is only one 'X' in the board array" do
            array = [["X","",""], ["","",""], ["","",""]]
            expect(logic.has_won?(array)).to eq(false)
        end

        xit "returns true if the first row contains three 'X's" do
            array = [["X","X","X"], ["","",""], ["","",""]]
            expect(logic.has_won?(array)).to eq(true)
        end
    end
end
