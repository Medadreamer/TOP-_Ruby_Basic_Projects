def sub_strings(string, dict)

    dict.reduce(Hash.new(0)) do |hash, dict_word|

        matches = string.downcase.split(dict_word).length 
        if matches > 1
            hash[dict_word] = matches - 1
            
        end
        hash
    end
    
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p sub_strings("Howdy partner, sit down! How's it going?", dictionary)