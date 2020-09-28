require './lib/UI/ui_continue_message'
describe UIContinueMessage do
    let(:ui_continue_message) {UIContinueMessage.new}
    context "after instructions have been printed to the terminal" do
        it "prints 'do you want to continue y/n'" do
            expect do
                allow(ui_continue_message).to receive(:gets).and_return("y\n")
                ui_continue_message.capture_input
            end.to output("Do you want to continue? y/n: ").to_stdout
        end
    end

    context "after asking 'do you want to continue?'" do
        it "accepts an input" do
            allow(ui_continue_message).to receive(:gets).and_return("y\n")
            expect(ui_continue_message.capture_input).to eq("y")
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