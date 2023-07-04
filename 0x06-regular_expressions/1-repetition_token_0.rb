#!/usr/bin/env ruby
# Script Name: 1-repetition_token_0.rb
###############################################################################
# Description:
#   This script matches a string that starts with 'h', followed by any
#   number of 't' characters (2 to 5 repetitions), and ends with 'n'.
#
# Usage:
#   ./1-repetition_token_0.rb [STRING]
#
# Arguments:
#   STRING: The input string to match the specified pattern.
#
# Returns:
#   The matched string if the pattern is found, or an empty string otherwise.
#
# Example:
#   $ ./1-repetition_token_0.rb htn
#   htn
#
#   $ ./1-repetition_token_0.rb htnn
#   htnn
#
#   $ ./1-repetition_token_0.rb htnnnnnn
#   htnnnnnn
#
#   $ ./1-repetition_token_0.rb hn
#
###############################################################################

# Match the pattern: starts with 'h', followed by any number of 't' characters (2 to 5 repetitions), ends with 'n'
matched_string = ARGV[0].scan(/hbt{2,5}n/).join

# Output the matched string
puts matched_string
