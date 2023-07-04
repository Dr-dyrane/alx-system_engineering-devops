#!/usr/bin/env ruby
# Script Name: 0-simply_match_school.rb
###############################################################################
# Description:
#   This script matches the word "School" in the given input string using a
#   regular expression.
#
# Usage:
#   ./0-simply_match_school.rb [STRING]
#
# Arguments:
#   STRING: The input string to search for the word "School"
#
# Returns:
#   The matched string containing "School" or an empty string if no match found.
#
# Example:
#   $ ./0-simply_match_school.rb School
#   School
#
#   $ ./0-simply_match_school.rb "Best School"
#   School
#
#   $ ./0-simply_match_school.rb "School Best School"
#   SchoolSchool
#
#   $ ./0-simply_match_school.rb "Grace Hopper"
#
###############################################################################

# Match the word "School" using a regular expression
matched_string = ARGV[0].scan(/School/).join

# Output the matched string
puts matched_string
