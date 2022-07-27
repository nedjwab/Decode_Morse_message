# frozen_string_literal: true

def decode_char(char)
  morse_signs = {
    'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..',
    'e' => '.', 'f' => '..-.', 'g' => '--.', 'h' => '....', 'i' => '..', 'j' => '.---',
    'k' => '-.-', 'l' => '.-..', 'm' => '--', 'n' => '-.', 'o' => '---', 'p' => '.--.',
    'q' => '--.-', 'r' => '.-.', 's' => '...', 't' => '-', 'u' => '..-', 'v' => '...-',
    'w' => '.--', 'x' => '-..-', 'y' => '-.--', 'z' => '--..'
  }
  morse_signs.key(char).upcase
end

decode_char('-..-')

def decode_word(morse_word)
  word = ''
  chars = morse_word.split(' ')
  chars.each do |char|
    word += decode_char(char)
  end
  word
end

puts decode_word('-- -.--')

def decode_phrase(morse_phrase)
  phrase = []
  words = morse_phrase.split('   ')
  words.each do |word|
    phrase.push(decode_word(word))
  end

  phrase.join(' ')
end

puts decode_phrase('-- -.--   -. .- -- .')
