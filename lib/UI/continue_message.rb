require './lib/Helper/capture_input'
module UI
    class ContinueMessage
        include CaptureInput

        def validate_input(input)
            input_upcase = input.upcase
            if input_upcase == 'Y' || input_upcase =='N'
                return true
            else
                print "Please enter 'y' or 'n'!\n"
                return false
            end
        end
    end
end
