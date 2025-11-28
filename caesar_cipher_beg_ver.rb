def caesar_cipher(string, shift_key)
  valid_lower_case_alphabet = ('a'.ord..'z'.ord).to_a
  valid_upper_case_alphabet = ('A'.ord..'Z'.ord).to_a
  ciphered_array = []
  result_from_sum_char_with_shift_key = 0

  string.bytes.each do |ord_char|
    if valid_lower_case_alphabet.include?(ord_char)
      result_from_sum_char_with_shift_key = ord_char + shift_key
      ciphered_array << if result_from_sum_char_with_shift_key > 'z'.ord
                          # valid_lower_case_alphabet[result_from_sum_char_with_shift_key - 'z'.ord - 1].chr
                          valid_lower_case_alphabet[(result_from_sum_char_with_shift_key - 'a'.ord) % 26].chr
                        else
                          result_from_sum_char_with_shift_key.chr
                        end
    elsif valid_upper_case_alphabet.include?(ord_char)
      result_from_sum_char_with_shift_key = ord_char + shift_key
      ciphered_array << if result_from_sum_char_with_shift_key > 'Z'.ord
                          valid_upper_case_alphabet[(result_from_sum_char_with_shift_key - 'A'.ord) % 26].chr
                        else
                          result_from_sum_char_with_shift_key.chr
                        end
    else
      ciphered_array << ord_char.chr
    end
  end

  p ciphered_array.join
end

caesar_cipher('what a string!', 5)
caesar_cipher('What a string!', 5)

