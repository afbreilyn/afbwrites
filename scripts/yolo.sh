#!/bin/bash

DAILY_DIRECTORY="$HOME/workspace/daily"
AFB_WRITES_DIRECTORY="$HOME/workspace/afbwrites/"

log_we_starting() {
  echo "<><><><>"
  echo "this is where the fun begins...."
  echo "<><><><>"
}

log_we_oot() {
  echo "<><><><>"
  echo "see ya, space cowboy"
  echo "<><><><>"
}

change_to_daily_directory() {
  cd $DAILY_DIRECTORY
}

make_copy_of_each_file() {
  for x in *
  do
    echo "$x"
    echo "$x" | sed 's/ //g'
    cp "$x" "$AFB_WRITES_DIRECTORY/app/views/generated_pages/"
  done
}

print_each_file_name() {
  for x in *
  do
    echo $x
  done
}

go_back_to_afbwrites() {
  cd $AFB_WRITES_DIRECTORY
}

log_we_starting
change_to_daily_directory
#print_each_file_name
make_copy_of_each_file
go_back_to_afbwrites

log_we_oot
