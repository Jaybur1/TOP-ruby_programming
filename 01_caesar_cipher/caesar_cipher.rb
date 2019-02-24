def caesar(str,lvl)
    cipher = ""
    letter = nil

    str.each_byte do |l|
    #(65..90) is the range of uppercase charcodes A to Z
      if (65..90).include? l.to_i
       letter = (l.to_i+lvl)
    #in case the cipher raises out of the letters range, reset to A
        if !(65..90).include? letter
          letter = letter - 26
        end
        cipher<<letter.chr
    #(97..122) is the range of downcase charcodes a to z
      elsif (97..122).include? l.to_i
        letter = (l.to_i + lvl)
    #in case cipher raises out of the letters range, reset to a 
         if !(97..122).include? letter
          letter = letter - 26
        end
        cipher<<letter.chr
     else 
      cipher<< l.chr
      end
    end
    cipher
    end


    puts "Give me something to cipher"
    str = gets.chomp
    puts "give me the cipher level"
    lvl = gets.chomp.to_i
    puts caesar(str,lvl)