#!/usr/bin/env ruby
# Script Name: 3-repetition_token_2.rb
###############################################################################
# Description:
#   This script matches a string that starts with 'h', followed by 'b', followed by one or more 't' characters, and ends with 'n'.
#
# Usage:
#   ./3-repetition_token_2.rb [STRING]
#
# Arguments:
#   STRING: The input string to match the specified pattern.
#
# Returns:
#   The matched string if the pattern is found, or an empty string otherwise.
#
# Example:
#   $ ./3-repetition_token_2.rb htn
#   htn
#
#   $ ./3-repetition_token_2.rb hatn
#   hatn
#
#   $ ./3-repetition_token_2.rb hbtnn
#   hbtnn
#
#   $ ./3-repetition_token_2.rb hbtnnnn
#
###############################################################################

# Match the pattern: starts with 'h', followed by 'b', followed by one or more 't' characters, ends with 'n'
matched_string = ARGV[0].scan(/hbt+n/).join

# Output the matched string
puts matched_string

