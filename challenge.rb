#!/usr/bin/env ruby
# rubocop:disable all

def decode_char(char)
  morse_dict = { 'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..', 'e' => '.', 'f' => '..-.',
                 'g' => '--.', 'h' => '....', 'i' => '..', 'j' => '.---', 'k' => '-.-', 'l' => '.-..', 'm' => '--',
                 'n' => '-.', 'o' => '---', 'p' => '.--.', 'q' => '--.-', 'r' => '.-.', 's' => '...', 't' => '-',
                 'u' => '..-', 'v' => '...-', 'w' => '.--', 'x' => '-..-', 'y' => '-.--', 'z' => '--..', ' ' => ' ' }
  letter = ''
  morse_dict.each { |key, value| 
    if char == value 
      letter = key.upcase
    end
  }
  letter
end

def decode_word(word)
  decoded = ''
  word_array = word.split
  word_array.each { |item| decoded += decode_char(item) }
  decoded
end

def decode(sentence)
  decoded = ''
  sentence_array = sentence.split(/ /, 3)
  sentence_array.each { |item| decoded += decode_word(item) }
  decoded
end

print decode_char '.-'
print decode_word '-- -.--'
print decode '-- -.--   -. .- -- .'
print decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
