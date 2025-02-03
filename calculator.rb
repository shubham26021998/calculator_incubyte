def add(str="")
  ans = 0
  if(str == "")
    ans = 0
  elsif (!str.include?(","))
    ans = str.to_i
  end
  ans
end
