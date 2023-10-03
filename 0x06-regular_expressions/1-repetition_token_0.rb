#!/usr/bin/env ruby

# Check if there is one argument provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <text>"
  exit 1
end

# Store the provided argument in a variable
text_to_search = ARGV[0]

# Define a regular expression pattern
pattern = /hbt{2,5}n/

# Use the scan method to find all matches in the input text
matches = text_to_search.scan(pattern)

# Join the matched substrings into a single string
matches_string = matches.join

# Print the result (matches_string)
puts matches_string
