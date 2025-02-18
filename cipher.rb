def caesar_cipher(input_string, shift)
  lowercase_alphabet = Array('a'..'z')
  uppercase_alphabet = Array('A'..'Z')
  # p lowercase_alphabet.length
  string_array = input_string.chars

  new_string = string_array.map do |letter|
    if uppercase_alphabet.include?(letter) 
      if uppercase_alphabet.index(letter)+shift > 26
        letter = uppercase_alphabet[uppercase_alphabet.index(letter)+shift-26]
      else
        letter = uppercase_alphabet[uppercase_alphabet.index(letter)+shift]
      end
    elsif lowercase_alphabet.include?(letter)
      if lowercase_alphabet.index(letter)+shift > 26
        letter = lowercase_alphabet[lowercase_alphabet.index(letter)+shift-26]
      else 
        letter = lowercase_alphabet[lowercase_alphabet.index(letter)+shift]
      end
    end
    letter
  end
  new_string.join
end

p caesar_cipher("What a string!", 5)