require './lib/UI/row_coordinate'

describe UI::RowCoordinate do
    let (:ui_row_coordinate) {UI::RowCoordinate.new}
    context "#capture_input" do

        context "after asking for row coordinate" do
            prompt = "Please input row coordinate of 'O':"
            it "takes a user input of A" do
                allow(ui_row_coordinate).to receive(:gets).and_return("A\n")
                expect(ui_row_coordinate.capture_input(prompt)).to eq("A")
            end

            it "takes a user input of B" do
                allow(ui_row_coordinate).to receive(:gets).and_return("B\n")
                expect(ui_row_coordinate.capture_input(prompt)).to eq("B")
            end

        end
    end

    context "#validate_input" do
        it "takes a user row that is not 'A', 'B' or 'C' and returns false" do
            expect(ui_row_coordinate.validate_input("D")).to eq(false)
        end
        it "takes a user row that is 'A', returns true" do
            expect(ui_row_coordinate.validate_input("A")).to eq(true)
        end
    end
end