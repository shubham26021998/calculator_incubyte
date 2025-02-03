def add(str="")
  return 0 if str.nil?

  if str.start_with?("//")
    delimiter_part, numbers_part = str.split("\n", 2)
    delimiter = delimiter_part[2..]
  else
    delimiter = ",|\n"
    numbers_part = str
  end

  raise ArgumentError if numbers_part.match?(/\n,|,\n|,,|\n\n/)

  nums = numbers_part.split(/#{delimiter}|\n/).map do |num|
    raise ArgumentError unless num.match?(/^\d+$/)
    num.to_i
  end

  nums.sum
end
