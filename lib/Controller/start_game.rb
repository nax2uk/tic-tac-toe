require './lib/UI/standard_message'

module Controller
    class StartGame
        def print_welcome_and_output_instructions
            ui_standard_messages = UI::StandardMessage.new
            ui_standard_messages.output_welcome_message
            ui_standard_messages.output_instructions
        end
    end
end