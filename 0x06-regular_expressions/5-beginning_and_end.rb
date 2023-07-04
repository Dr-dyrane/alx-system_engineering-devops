#!/usr/bin/env ruby
# Script Name: 5-beginning_and_end.rb
###############################################################################
# Description:
#   This script matches a string that starts with 'h', ends with 'n', and has any single character in between.
#
# Usage:
#   ./5-beginning_and_end.rb [STRING]
#
# Arguments:
#   STRING: The input string to match the specified pattern.
#
# Returns:
#   The matched string if the pattern is found, or an empty string otherwise.
#
# Example:
#   $ ./5-beginning_and_end.rb hn
#
#   $ ./5-beginning_and_end.rb hbn
#   hbn
#
#   $ ./5-beginning_and_end.rb hbtn
#
#   $ ./5-beginning_and_end.rb h8n
#   h8n
#
###############################################################################

# Match the pattern: starts with 'h', ends with 'n', and has any single character in between
matched_string = ARGV[0].scan(/^h.n$/).join

# Output the matched string
puts matched_string
