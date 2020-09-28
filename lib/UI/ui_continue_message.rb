class UIContinueMessage

        def capture_input
            print "Do you want to continue? y/n: "
            # gets.chomp
        end
    
        def validate_input(input)
            if input == 'y' || input =='n'
                return true
            else
                print "Please enter 'y' or 'n'!"
                return false
            end
        end
end