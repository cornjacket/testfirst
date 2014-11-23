def translate(sentence)
  array = sentence.split(" ")
  array.map {|i| translate_word(i)}.join(" ")  
end

def translate_word(word)
  # start w vowel
  if word =~ /\A[aeiou]/
    word + 'ay'
  elsif word =~ /\Aqu/
    word[2..-1] + "quay"
  elsif word =~ /\A[^aeiou]qu/
    word[3..-1] + word[0..2] + 'ay'
  elsif word =~ /\A(?i:(?![aeiou])[a-z]){3}/
    word[3..-1] + word[0..2] + 'ay'
  elsif word =~ /\A(?i:(?![aeiou])[a-z]){2}/
    word[2..-1] + word[0..1] + 'ay'
  elsif word =~ /\A(?i:(?![aeiou])[a-z]){1}/
    word[1..-1] + word[0] + 'ay'
  end
end