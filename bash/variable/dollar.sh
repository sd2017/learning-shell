#!/usr/bin/env bash

# $1, $2, $3, ... are the positional parameters.
# "$@" is an array-like construct of all positional parameters, {$1, $2, $3 ...}.
# "$*" is the IFS expansion of all positional parameters, $1 $2 $3 ....
# $# is the number of positional parameters.
# $- current options set for the shell.
# $$ pid of the current shell (not subshell).
# $_ most recent parameter (or the abs path of the command to start the current shell immediately after startup).
# $IFS is the (input) field separator.
# $? is the most recent foreground pipeline exit status.
# $! is the PID of the most recent background command.
# $0 is the name of the shell or shell script.
# http://stackoverflow.com/questions/9915610/the-difference-between-and

echo "argv[0]=$0"
echo $#

function print_args_at {
  printf "%s\n" "$@"
}

function print_args_star {
  printf "%s\n" "$*"
}

print_args_at "one" "two three" "four"

print_args_star "one" "two three" "four"
