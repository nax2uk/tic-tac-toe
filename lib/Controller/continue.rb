require './lib/UI/continue_message'
module Controller
    class Continue
        def get_continue
            continue_message = UI::ContinueMessage.new
            continue = ''
            continue_is_valid = false
        
            until continue_is_valid
                continue = continue_message.capture_input
                continue_is_valid = continue_message.validate_input(continue)
            end
            continue
        end
    end
end