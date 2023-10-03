#!/usr/bin/env ruby

# Check if there is one argument provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <text>"
  exit 1
end

text_to_search = ARGV[0]

# Define the regular expression pattern for a 10-digit phone number
pattern = /\b\d{10}\b/

# Use the pattern to find matches in the input text
matches = text_to_search.scan(pattern)

# Print the matches (if any)
if !matches.empty?
  matches.each do |match|
    puts match
  end
else
  puts ""
end
