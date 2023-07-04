#!/usr/bin/env ruby
# Script Name: 7-OMG_WHY_ARE_YOU_SHOUTING.rb
###############################################################################
# Description:
#   This script matches and extracts capital letters from a given string.
#
# Usage:
#   ./7-OMG_WHY_ARE_YOU_SHOUTING.rb [STRING]
#
# Arguments:
#   STRING: The input string to extract capital letters from.
#
# Returns:
#   The extracted capital letters joined together, or an empty string if no
#   capital letters are found.
#
# Example:
#   $ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I realLy hOpe VancouvEr posseSs Yummy Soft vAnilla Dupper Mint Ice Nutella cream"
#   ILOVESYSADMIN
#
#   $ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "WHAT do you SAY?"
#   WHATSAY
#
#   $ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "cannot read you"
#
###############################################################################

# Match and extract capital letters from the string
extracted_letters = ARGV[0].scan(/[A-Z]+/).join

# Output the extracted capital letters
puts extracted_letters
