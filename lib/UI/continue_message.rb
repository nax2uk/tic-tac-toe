module UI
    class ContinueMessage

        def capture_input
            print "Do you want to continue? y/n: "
            gets.chomp
        end
    
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
