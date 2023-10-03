#!/usr/bin/env ruby

if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <input_string>"
  exit(1)
end

input_string = ARGV[0]

capital_letters = input_string.scan(/[A-Z]/).join

puts capital_letters
