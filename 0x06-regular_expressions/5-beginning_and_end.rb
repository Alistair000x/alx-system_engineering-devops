#!/usr/bin/env ruby

input = ARGV[0]
pattern = /^h.n$/
match_result = input.match(pattern)

if match_result
  puts ARGV[0]
end
