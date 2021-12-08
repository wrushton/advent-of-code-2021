#!/usr/bin/ruby -w

puts "Processing begin";

depth = 0
distance = 0
aim = 0
File.open("day2/input.txt", "r").each do |line|
  currLine = line.split(" ")
  if currLine[0] == "forward"
    distance += currLine[1].to_i
    depth += currLine[1].to_i*aim
  elsif currLine[0] == "up"
    aim -= currLine[1].to_i
  elsif currLine[0] == "down"
    aim += currLine[1].to_i
  end
end

puts "Processing done";
puts depth*distance;