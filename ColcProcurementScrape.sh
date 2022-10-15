#Mouse and keyboard input
    #move mouse (x, y)
        move_mouse(){
            xdotool mousemove x y
        }

    #click mouse (no variables)
        click(){
            xdotool click 1
        }
    #right click
        r_click(){
            xdotool click 2
        }

    #type string (text) note that spaces do not show, use _ instead
        type(){
            xdotool type $text
        }

    #press key
        key(){
            xdotool key $keystroke
        }

#CSV manipulation
    #read cell in file

    #count rows in file (csv = filename)
        row_count(){
            wc -l < $csv
        }

    #write to cell in file (row, col, string, csv, output)
        csv_edit(){
            nawk -v r=$row -v c=$col -v val=$string -F, 'BEGIN{OFS=","}; NR != r; NR == r {$c = val; print}' $csv > $output
            mv $output $csv
        }

    #take screenshot of specific area
        screenshot=(gnome-screenshot -a &); sleep 0.1 && xdotool mousemove x y mousedown 1 mousemove $((x+1)) $((y+1)) mouseup 1
        screenshot=(scrot ~/Downloads/file.png -s); sleep 0.1 && xdotool mousemove x y mousedown 1 mousemove $((x+1)) $((y+1) mouseup 1

    #check image with image
        compare -metric AE image1 image2 null: #returns number


supplier_x=561
supplier_y=571

lines_x=1005
lines_y=891


print column

awk -F "\"*,\"*" '{print $2}' $csv > ~/Downloads/temp.txt

print row of column
sed '3q;d' ~/Downloads/temp.txt


cell(){
    awk -F "\"*,\"*" '{print $2}; $csv > ~/Downloads/temp.txt
    sed '3q;d' ~/Downloads/temp.txt
}

cell(){
    awk -F "\"*,\"*" '{print $2}; $csv > ~/Downloads/temp.txt
    sed '3q;d' ~/Downloads/temp.txt
}