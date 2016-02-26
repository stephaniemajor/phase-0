def reverse(string)
  array_str = string.split("")
  num_index = array_str.length
  reverse_str = []
  array_str.each {
    reverse_str << array_str[num_index-1]
    num_index -= 1
  }
  return reverse_str.join("")
end
puts reverse("I love you")