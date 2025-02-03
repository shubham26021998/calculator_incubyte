def add(str="")
  ans = str.split(",").map(&:to_i).sum
end
