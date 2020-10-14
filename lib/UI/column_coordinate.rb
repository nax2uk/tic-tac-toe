require './lib/Helper/capture_input'    
module UI
    class ColumnCoordinate  
        include CaptureInput

        def validate_input(column)
            if column == "1" || column == "2" || column == "3"
                return true
            else
                puts "Incorrect input! Please enter '1', '2', or '3'"
                return false
            end
        end
    end
end