#!/usr/bin/env ruby
# Script Name: 4-repetition_token_3.rb
###############################################################################
# Description:
#   This script matches a string that starts with 'h', followed by 'b', followed by zero or more 't' characters, and ends with 'n'.
#
# Usage:
#   ./4-repetition_token_3.rb [STRING]
#
# Arguments:
#   STRING: The input string to match the specified pattern.
#
# Returns:
#   The matched string if the pattern is found, or an empty string otherwise.
#
# Example:
#   $ ./4-repetition_token_3.rb htn
#   htn
#
#   $ ./4-repetition_token_3.rb hatn
#   hatn
#
#   $ ./4-repetition_token_3.rb hbtnn
#   hbtnn
#
#   $ ./4-repetition_token_3.rb hbtnnnn
#   hbtnnnn
#
###############################################################################

# Match the pattern: starts with 'h', followed by 'b', followed by zero or more 't' characters, ends with 'n'
matched_string = ARGV[0].scan(/hbt*n/).join

# Output the matched string
puts matched_string
