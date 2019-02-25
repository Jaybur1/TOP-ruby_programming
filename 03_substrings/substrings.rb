dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substring (str, arr)
  word_count = Hash.new
  str_arr = str.downcase.split

  #loop every word in the input str
    str_arr.each do |str_w|
  #then loop every word inside the dictionary arr
      arr.each do |arr_w|
  #if the word from the dictionary equals to or part of the input word, create or increase the count
        if str_w.include? arr_w
          if word_count.include? arr_w
            word_count[arr_w]+=1
          else
            word_count[arr_w] = 1
          end
        end
      end
    end
word_count.length > 0 ? word_count : "Nothing found"
end

puts "Give me a word or multi"
input = gets.chomp
puts substring(input,dictionary)
#puts "#{substring("Howdy partner, sit down! How's it going?", dictionary)}"