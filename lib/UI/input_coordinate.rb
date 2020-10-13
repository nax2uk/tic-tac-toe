module UI
    class InputCoordinate
        def input_row_coordinate
            print "Please input row coordinate of 'O':"
            gets.chomp
        end

        def validate_row_coordinate(row)
            if row == "A" || row == "B" || row == "C"
                return true
            else
                puts "Incorrect input! Please enter 'A','B' or 'C'"
                return false
            end
            
        end

        def input_column_coordinate
            print "Please input column coordinate of 'O':"
            gets.chomp
        end

        def validate_column_coordinate(column)
            if column == "1" || column == "2" || column == "3"
                return true
            else
                puts "Incorrect input! Please enter '1', '2', or '3'"
                return false
            end
        end
    end
end

