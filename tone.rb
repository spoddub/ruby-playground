def get_sentence_tone(text)
  text.upcase == text ? 'scream' : 'general'
end