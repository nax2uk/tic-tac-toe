require './lib/Helper/capture_input'
module UI
    class RowCoordinate
        include CaptureInput

        def validate_input(row)
            if row == "A" || row == "B" || row == "C"
                return true
            else
                puts "Incorrect input! Please enter 'A','B' or 'C'"
                return false
            end
        end
    end
end