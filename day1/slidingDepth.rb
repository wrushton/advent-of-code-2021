#!/usr/bin/ruby -w

puts "Processing begin";

increases = 0

firstThreeLines = File.foreach("day1/depth_input.txt").first(3)
firstThreeLines = firstThreeLines.map(&:to_i)
prevDepths = Marshal.load(Marshal.dump(firstThreeLines))
prevDepthsSum = prevDepths.sum
currDepths = Marshal.load(Marshal.dump(firstThreeLines))
currDepthsSum = currDepths.sum

File.readlines("day1/depth_input.txt").drop(3).each do |line|
  prevDepths = Marshal.load(Marshal.dump(currDepths))
  prevDepthsSum = currDepthsSum
  currDepths[0] = currDepths[1]
  currDepths[1] = currDepths[2]
  currDepths[2] = line.to_i
  currDepthsSum = currDepths.sum
  if currDepthsSum > prevDepthsSum
    increases += 1
  end
end

puts "Processing done";
puts increases;