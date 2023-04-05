def decode_char (char)
  morse_codes = {
    A: ".-", B: "-...", C: "-.-.", D: "-..", E: ".", F: "..-.", G: "--.", H: "....",
    I: "..", J: ".---", K: "-.-", L: ".-..", M: "--", N: "-.", O: "---", P: ".--.", Q: "--.-",
    R: ".-.", S: "...", T: "-", U: "..-", V: "...-", W: ".--", X: "-..-", Y: "-.--", Z: "--..",
  }
  morse_codes.each do |key, value|
    return key.to_s if value === char
  end
end

def decode_word(morse_word)
  morse_chars = morse_word.split(" ")
  decode_word = ''
  morse_chars.each do |morse_code|
    decode_word += decode_char(morse_code)
  end
  decode_word
end

decode_word("-- -.--")




