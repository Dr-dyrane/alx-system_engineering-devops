#!/usr/bin/env ruby
# Script Name: 100-textme.rb
###############################################################################
# Description:
#   This script extracts information from a log file containing TextMe app text messages transactions.
#   It retrieves the sender, receiver, and flags for each transaction and outputs them in a specific format.
#
# Usage:
#   ./100-textme.rb [LOG_FILE]
#
# Arguments:
#   LOG_FILE: The path to the log file containing the text messages transactions.
#
# Output:
#   The script outputs the extracted information in the following format:
#   [SENDER],[RECEIVER],[FLAGS]
#
#   - [SENDER]: The sender phone number or name (including country code if present).
#   - [RECEIVER]: The receiver phone number or name (including country code if present).
#   - [FLAGS]: The flags that were used.
#
# Note:
#   This script assumes that the log file follows the specified format for text message transactions.
###############################################################################

# Extract sender, receiver, and flags using regular expressions and join them with commas
matched_strings = ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")

# Output the extracted information
puts matched_strings
