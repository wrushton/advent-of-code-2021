#!/usr/bin/ruby -w

puts "Processing begin";

increases = 0
prevDepth = 10000000000000000
File.open("day1/depth_input.txt", "r").each do |line|
  currDepth = line.to_i
  if currDepth > prevDepth
    count += 1
  end
  prevDepth = currDepth
end

puts "Processing done";
puts increases;