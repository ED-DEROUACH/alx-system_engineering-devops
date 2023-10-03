#!/usr/bin/env ruby

# Check if there is one argument provided
if ARGV.length != 1
  puts "Usage: #{$PROGRAM_NAME} <log_file>"
  exit 1
end

# Read the log file specified in the command line argument
log_file_path = ARGV[0]

# Read the log file content
log_content = File.read(log_file_path)

# Define a regular expression pattern to extract the required information
pattern = /\[from:([^:\]]+)\] \[to:([^:\]]+)\] \[flags:([^:\]]+)\]/

# Use the pattern to find matches in the log content
matches = log_content.scan(pattern)

# Output the matches in the required format
matches.each do |match|
  sender = match[0]
  receiver = match[1]
  flags = match[2]
  puts "#{sender},#{receiver},#{flags}"
end
