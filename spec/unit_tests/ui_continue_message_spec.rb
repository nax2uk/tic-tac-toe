require './lib/UI/ui_continue_message'
describe UIContinueMessage do
    let(:ui_continue_message) {UIContinueMessage.new}
    context "#capture_input" do

        context "after asking 'do you want to continue?'" do
            it "accepts an input" do
                allow(ui_continue_message).to receive(:gets).and_return("y\n")
                expect(ui_continue_message.capture_input).to eq("y")
            end
        end
    end

    context "#validate_input" do
        context "" do
            it "returns true if it is a 'y' or 'n'" do
                expect(ui_continue_message.validate_input("y")).to eq(true)
                expect(ui_continue_message.validate_input("n")).to eq(true)
            end
            it "returns false if it is not a 'y' or 'n'" do
                expect(ui_continue_message.validate_input("a")).to eq(false)
            end
            it "returns true if it is a 'Y' or 'N'" do
                expect(ui_continue_message.validate_input("Y")).to eq(true)
                expect(ui_continue_message.validate_input("N")).to eq(true)
            end

        end
    end

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    # context "#set_continue - checks that user enters correct input when asked if user wants to continue" do
    #     it "returns 'y' or 'n' in case of valid input" do
    #         allow(ui_standard_messages).to receive(:gets).and_return("y\n")
    #         # ui.stub(:gets).and_return("y\n")
    #         expect(ui_standard_messages.set_continue).to eq("y")
    #     end
    #     it "doesnt return 'y' or 'n' on invalid input" do
    #         allow(ui).to receive(:gets).and_return("d\n")
    #         expect{ui.set_continue}.to output(
    #             "\nPlease enter y or n.\nDo you want to continue? y/n: "
    #         ).to_stdout

    #     end
    # end
end