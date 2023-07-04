#!/usr/bin/env ruby
# Script Name: 6-phone_number.rb
###############################################################################
# Description:
#   This script matches a 10-digit phone number.
#
# Usage:
#   ./6-phone_number.rb [STRING]
#
# Arguments:
#   STRING: The input string to match the specified pattern.
#
# Returns:
#   The matched string if the pattern is found, or an empty string otherwise.
#
# Example:
#   $ ./6-phone_number.rb 4155049898
#   4155049898
#
#   $ ./6-phone_number.rb " 4155049898"
#
#   $ ./6-phone_number.rb "415 504 9898"
#
#   $ ./6-phone_number.rb "415-504-9898"
#
###############################################################################

# Match the pattern: a 10-digit phone number
matched_string = ARGV[0].scan(/^[0-9]{10}$/).join

# Output the matched string
puts matched_string
