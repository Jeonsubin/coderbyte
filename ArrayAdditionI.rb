def ArrayAdditionI(arr)
  @largestNum = 0
  @isMatch = 0
  arr.each do |x|
    if(x > @largestNum)
      @largestNum = x
    end
  end
    
  newArr = []
  arr.each do |x|
    if(x != @largestNum)
      newArr << x
    end
  end
        
  combination("", newArr)
  
  if(@isMatch == 1)
    return "true"    
  end
  
  return "false"
  
end

def combination(prefix, arr)
  arr.each_index do |x|
    prefix += "+" if prefix.length > 0 && prefix[-1, 1] != '+'
	sum = prefix + arr[x].to_s
	if(eval(sum).to_i == @largestNum)
	  @isMatch = 1
	end
	combination(sum, arr[x + 1 .. arr.length])
  end
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
ArrayAdditionI(STDIN.gets)  
