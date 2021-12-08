#!/usr/bin/ruby -w

puts "Processing begin";

lineLen = 0
File.open("day3/input.txt", "r").each do |line|
  lineLen = line.length()
end

values = Array.new(lineLen,0)
lineCount = 0
File.open("day3/input.txt", "r").each do |line|
  currLine = line.strip().split("").map(&:to_i)
  index = 0
  for i in currLine do
    values[index] += i
    index += 1
  end
  lineCount += 1
end

gammaArr = Array.new(lineLen,0)
epsilonArr = Array.new(lineLen,0)
index = 0
for i in values do
  if values[index] > lineCount/2
    gammaArr[index] = 1
  else
    epsilonArr[index] = 1
  end
  index += 1
end

index = lineLen-1
gammaDecimal = 0
for i in gammaArr
  gammaDecimal += i*(2**index)
  index -= 1
end

index = lineLen-1
epsilonDecimal = 0
for i in epsilonArr
  epsilonDecimal += i*(2**index)
  index -= 1
end

puts "Processing done";
puts gammaDecimal*epsilonDecimal;