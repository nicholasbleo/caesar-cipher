def caesar_cipher(string, shift)
    comp_string = 'abcdefghijklmnopqrstuvwxyz'.split('')
    upper_index = string.split('').map.with_index { |char, i| i if (char == char.upcase)}.compact
    
    new_string = string.split('').map.with_index do |char, i|
        if comp_string.include?(char.downcase)
            if upper_index.include?(i)
                comp_string[comp_string.index(char.downcase) - 26 + shift].upcase
            else
                comp_string[comp_string.index(char.downcase) - 26 + shift]
            end
        else
            char
        end
    end
    new_string.join('')
end

p caesar_cipher('Roger that captain!', 15)