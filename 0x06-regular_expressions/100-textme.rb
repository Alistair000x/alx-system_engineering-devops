#!/usr/bin/env ruby

if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <log_file>"
  exit(1)
end

log_file = ARGV[0]
log_data = File.read(log_file)
pattern = /\[from:(?<sender>[^\]]+)\] \[to:(?<receiver>[^\]]+)\] \[flags:(?<flags>[^\]]+)\]/
matches = log_data.scan(pattern)

matches.each do |match|
  sender = match[0].strip
  receiver = match[1].strip
  flags = match[2].strip
  puts "#{sender},#{receiver},#{flags}"
end
