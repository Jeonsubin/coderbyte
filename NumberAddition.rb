
def NumberAddition(str)

  str.gsub!(/[^0-9]/, " ")
  arr = str.split(" ")
  sum = 0
  arr.each do |x|
    sum += x.to_i
  end
  return sum
         
end
