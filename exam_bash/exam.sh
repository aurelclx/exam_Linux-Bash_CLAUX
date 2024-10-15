#!/bin/bash

function display_graphic_card_sales(){
echo "$(date)" >> $1

for graphic_card in rtx3060 rtx3070 rtx3080 rtx3090 rx6700
do 
echo -n $graphic_card":" >> $1 && curl http://0.0.0.0:5000/$graphic_card >> $1
done
}

display_graphic_card_sales sales.txt 