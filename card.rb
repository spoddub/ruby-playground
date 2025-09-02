def prepare_card_for_display(number)
  last_four = number[-4..]
  "**#{last_four}"
end
