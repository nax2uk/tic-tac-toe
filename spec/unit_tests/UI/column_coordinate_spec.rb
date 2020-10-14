require './lib/UI/column_coordinate'

describe UI::ColumnCoordinate do
    let (:ui_column_coordinate) {UI::ColumnCoordinate.new}

    context "#capture_input(prompt" do
        context "after asking for column coordinate" do
            prompt = "Please input column coordinate of 'O':"
            it "takes a user input of 1" do
                allow(ui_column_coordinate).to receive(:gets).and_return("1\n")
                expect(ui_column_coordinate.capture_input(prompt)).to eq("1")
            end

            it "takes a user input of 2" do
                allow(ui_column_coordinate).to receive(:gets).and_return("2\n")
                expect(ui_column_coordinate.capture_input(prompt)).to eq("2")
            end
        end
    end

    context "#validate_input" do
        it "takes a user input that is not '1', '2' or '3' and returns false" do
            expect(ui_column_coordinate.validate_input("4")).to eq(false)
        end
        it "takes a user input that is '1', returns true" do
            expect(ui_column_coordinate.validate_input("1")).to eq(true)
        end
    end
end