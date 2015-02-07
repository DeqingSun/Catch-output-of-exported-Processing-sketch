#!/bin/bash

#following lines is used to switch to current path when executed in Finder
PROGPATH=$(dirname $_)
cd $PROGPATH

#use a variable as sketch name
SKETCH_NAME=Processing_print

CURRENT_TIME=$(date "+%Y_%m_%d-%H_%M_%S")

./application.macosx/$SKETCH_NAME.app/Contents/MacOS/$SKETCH_NAME >>Mac_log_both_stdout_stderr_on-$CURRENT_TIME.txt 2>&1
