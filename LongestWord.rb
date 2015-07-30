def LongestWord(sen)
  words = sen.gsub(/[\W\d]/, ' ').split
  greatest_length = 0
  largest_word = nil

  words.each do |word| 
    if word.length > greatest_length
      greatest_length = word.length
      largest_word = word
    end
  end

  return largest_word
end
