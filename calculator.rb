def add(str="")
  return 0 if str.nil?
  raise ArgumentError if str.match?(/\n,|,\n|,,|\n\n/)
  nums = str.split(/,|\n/).map{ |num|
    raise ArgumentError unless num.match?(/^\d+$/)
    num.to_i
  }
  nums.sum
end
