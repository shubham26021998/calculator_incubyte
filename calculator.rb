def add(str="")
  return 0 if str.nil?
  nums = str.split(/,|\n/).map{ |num|
    raise ArgumentError unless num.match?(/^\d+$/)
    num.to_i
  }
  nums.sum
end
