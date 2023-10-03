#!/usr/bin/env ruby

# Check if there is one argument provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <text>"
  exit 1
end

text_to_search = ARGV[0]

# Define the regular expression pattern for matching capital letters
pattern = /[A-Z]+/

# Use the pattern to find matches in the input text
matches = text_to_search.scan(pattern)

# Join the matches into a single string
result = matches.join

# Print the result
puts result
