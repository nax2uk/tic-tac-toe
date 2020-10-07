require './lib/UI/input_coordinate'

describe UI::InputCoordinate do
    let (:ui_input_coordinate) {UI::InputCoordinate.new}
    context "#input_row_coordinate" do

        context "after asking for row coordinate" do
            it "takes a user input of A" do
                allow(ui_input_coordinate).to receive(:gets).and_return("A\n")
                expect(ui_input_coordinate.input_row_coordinate).to eq("A")
            end

            it "takes a user input of B" do
                allow(ui_input_coordinate).to receive(:gets).and_return("B\n")
                expect(ui_input_coordinate.input_row_coordinate).to eq("B")
            end

        end
    end

    context "#validate_row_coordinate" do
        it "takes a user input that is not 'A', 'B' or 'C' and returns false" do
            #allow(ui_input_coordinate).to receive(:gets).and_return("D\n")
            expect(ui_input_coordinate.validate_row_coordinate("D")).to eq(false)
        end
        it "takes a user input that is 'A', returns true" do
            #allow(ui_input_coordinate).to receive(:gets).and_return("D\n")
            expect(ui_input_coordinate.validate_row_coordinate("A")).to eq(true)
        end
    end
end