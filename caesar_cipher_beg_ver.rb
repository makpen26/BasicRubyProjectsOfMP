def caesar_cipher(string, shift_key)
  ciphered_array = []

  string.bytes.each do |ord_char|
    ciphered_array << if ('a'.ord..'z'.ord).to_a.include?(ord_char)
                        helper_method_to_shift_key(ord_char, shift_key, 'a'.ord, 'z'.ord)
                      elsif ('A'.ord..'Z'.ord).to_a.include?(ord_char)
                        helper_method_to_shift_key(ord_char, shift_key, 'A'.ord, 'Z'.ord)
                      else
                        ord_char.chr
                      end
  end

  p ciphered_array.join
end

def helper_method_to_shift_key(ord_char, shift_key, first_char, last_char)
  ord_char + shift_key > last_char ? (((ord_char + shift_key - first_char) % 26) + first_char).chr : (ord_char + shift_key).chr
end

caesar_cipher('What a string!', 5)
