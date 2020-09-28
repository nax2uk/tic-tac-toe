require './lib/UI/ui_input_coordinate'

describe UIInputCoordinate do
    let (:ui_input_coordinate) {UIInputCoordinate.new}
    context "#input_row_coordinate" do

        context "after asking for row coordinate" do
            it "takes in a user input" do
                allow(ui_input_coordinate).to receive(:gets).and_return("A\n")
                expect(ui_input_coordinate.input_row_coordinate).to eq("A")
            end
        end
    end
end