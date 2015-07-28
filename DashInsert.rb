def DashInsert(str)

str = str.to_s.split('')
		str.each_with_index{|a,i|
		if(a.to_i % 2 == 1 && i != 0 && str[i - 1].to_i % 2 == 1)
	
				str.insert(i, '-')
			end
		}
		return str.join('')
	
	end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
DashInsert(STDIN.gets)  

