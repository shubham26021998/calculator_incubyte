def add(str="")
  return 0 if str.nil?
  ans = str.split(",").map(&:to_i).sum
end
