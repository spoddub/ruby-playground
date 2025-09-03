def type_of_type(value)
  if value.is_a?(Hash) || value.is_a?(Array) || value.is_a?(Range)
    :complex
  else
    :simple
  end
end