#!/usr/bin/env ruby

input = ARGV[0]
pattern = /School/

matches = input.scan(pattern)

if
  puts matches.join
end
