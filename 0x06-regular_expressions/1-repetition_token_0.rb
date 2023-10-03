#!/usr/bin/env ruby

input = ARGV[0]
pattern = /hbt{2,5}n/
match_result = input.match(pattern)

if match_result
  puts match_result[0]
end
