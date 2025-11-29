def caesar_cipher(string, shift_key)
  ciphered_array = []

  string.bytes.each do |ord_char|
    if ('a'.ord..'z'.ord).to_a.include?(ord_char)
      ciphered_array << (ord_char + shift_key > 'z'.ord ? ('a'.ord..'z'.ord).to_a[(ord_char + shift_key - 'a'.ord) % 26].chr : (ord_char + shift_key).chr)
    elsif ('A'.ord..'Z'.ord).to_a.include?(ord_char)
      ciphered_array << (ord_char + shift_key > 'Z'.ord ? ('A'.ord..'Z'.ord).to_a[(ord_char + shift_key - 'A'.ord) % 26].chr : (ord_char + shift_key).chr)
    else
      ciphered_array << ord_char.chr
    end
  end

  p ciphered_array.join
end

caesar_cipher('What a string!', 5)
