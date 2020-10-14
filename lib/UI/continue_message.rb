require './lib/Helper/capture_input'
module UI
    class ContinueMessage
        include CaptureInput
    
        def validate_input(input)
            if input.downcase == 'y' || input.downcase =='n'
                return true
            else
                print "Please enter 'y' or 'n'!\n"
                return false
            end
        end
    end
end
