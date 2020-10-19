require './lib/Helper/capture_input'
module UI
    class RowCoordinate
        include CaptureInput

        def validate_input(row)
            row_upcase = row.upcase
            if row_upcase == "A" || row_upcase == "B" || row_upcase == "C"
                return true
            else
                puts "Incorrect input! Please enter 'A','B' or 'C'"
                return false
            end
        end
    end
end