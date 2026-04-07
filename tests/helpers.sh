#!/usr/bin/env bash

# Returns the value of given tmux option.
# First argument is the option name, e.g. @sonokai_flavor.
#
# Usage: `get_option @sonokai_flavor`
# Would return: `default`
#
# The option is given as a format string.
get_option() {
  local option
  option=$1

  tmux display-message -p "#{${option}}"
}

# Prints the given tmux option to stdout.
# First argument is the option name, e.g. @sonokai_flavor.
#
# Usage: `print_option @sonokai_flavor`
# Would print: `@sonokai_flavor default`
#
# The option is given as a format string.
print_option() {
  local option
  option=$1

  printf "\n%s " "${option}"
  get_option "$option"
}
