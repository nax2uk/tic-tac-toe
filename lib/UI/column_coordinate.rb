require './lib/Helper/capture_input'    
module UI
    class ColumnCoordinate  
        include CaptureInput

        def validate_input(column)
            if column == "1" || column == "2" || column == "3" || column == "4" || column == "5"
                return true
            else
                puts "Incorrect input! Please enter '1', '2', '3', '4', or '5'"
                return false
            end
        end
    end
end