#!/usr/bin/env ruby
# Script Name: 2-repetition_token_1.rb
###############################################################################
# Description:
#   This script matches a string that starts with 'h', followed by an optional 'b',
#   followed by exactly one 't' character, and ends with 'n'.
#
# Usage:
#   ./2-repetition_token_1.rb [STRING]
#
# Arguments:
#   STRING: The input string to match the specified pattern.
#
# Returns:
#   The matched string if the pattern is found, or an empty string otherwise.
#
# Example:
#   $ ./2-repetition_token_1.rb htn
#   htn
#
#   $ ./2-repetition_token_1.rb hatn
#   hatn
#
#   $ ./2-repetition_token_1.rb hbtn
#
###############################################################################

# Match the pattern: starts with 'h', followed by an optional 'b', followed by exactly one 't' character, ends with 'n'
matched_string = ARGV[0].scan(/hb?tn/).join

# Output the matched string
puts matched_string
