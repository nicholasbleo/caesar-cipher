def caesar_cipher(string, shift)
    comp_string = 'abcdefghijklmnopqrstuvwxyz'.split('')
    new_string_array = string.split('').map do |char|
        new_char_index = comp_string.index(char) + shift - 26
        comp_string[new_char_index]
    end

    new_string_array.join('')
end

p caesar_cipher('xxx', 10)