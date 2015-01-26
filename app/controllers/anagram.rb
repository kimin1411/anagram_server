def canonical(word)
  word.downcase.chars.sort
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end