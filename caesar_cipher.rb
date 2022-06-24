
def caesar_cipher(string, key)
    string_array = string.split("")

        

    new_string_array = string_array.map do |char|
        # binding.pry

    
        if char.downcase.ord.between?(65, 90) || char.downcase.ord.between?(97, 122)
            if((char.downcase.ord + key) > 122)
                new_char = char.ord - (26 - key)
                char = new_char.chr


           else
                new_char = char.ord + key
                char = new_char.chr  

           end
        else
            char
        end
    end

    new_string = new_string_array.join("")
    return new_string
        
end

puts caesar_cipher("What a string!", 5)