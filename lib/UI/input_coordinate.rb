module UI
    class InputCoordinate
        def input_row_coordinate
            print "Please input row coordinate of 'O':"
            gets.chomp
        end

        def validate_row_coordinate(row)
            if row == "A" || row == "B" || row == "C"
                return true
            end
            false
        end
    end
end