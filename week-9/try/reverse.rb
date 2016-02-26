def reverse(sentence)
  return sentence.split("").reverse.join("")
end
puts reverse("I am a fool")